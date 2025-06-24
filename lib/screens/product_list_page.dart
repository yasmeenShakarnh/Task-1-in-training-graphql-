import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../blocs/product_bloc.dart';
import '../widgets/multi_select_chip.dart';
import '../graphql/queries.graphql.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  List<CategoryItem> _categories = [];
  bool _initialized = false;
  bool _showFilter = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      _loadCategories();
      _initialized = true;
    }
  }

  void _loadCategories() async {
    final client = GraphQLProvider.of(context).value;
    final res = await client.query(
      QueryOptions(document: documentNodeQueryGetCategories),
    );
    if (!res.hasException) {
      final data = Query$GetCategories.fromJson(res.data!);
      setState(() {
        _categories = data.categories!.edges
            .map((e) => CategoryItem(e.node!.id, e.node!.name))
            .toList();
      });
    }
  }

  String extractPlainText(String? js) {
    if (js == null) return '';
    try {
      final d = jsonDecode(js);
      final bs = d['blocks'] as List;
      return bs.isNotEmpty ? bs[0]['data']['text'] as String : '';
    } catch (_) {
      return js;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: const Text('Product Browser', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: Colors.white),
            tooltip: _showFilter ? 'Hide Filters' : 'Show Filters',
            onPressed: () {
              setState(() {
                _showFilter = !_showFilter;
              });
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: TypeAheadField<Query$GetProducts$products$edges>(
                suggestionsCallback: (pattern) async {
                  context.read<ProductBloc>().add(GetSuggestions(pattern));
                  await Future.delayed(const Duration(milliseconds: 300));
                  return context.read<ProductBloc>().state.products;
                },
                itemBuilder: (_, suggestion) {
                  final p = suggestion.node!;
                  return ListTile(
                    leading: p.thumbnail?.url != null
                        ? Image.network(p.thumbnail!.url, width: 40, height: 40, fit: BoxFit.cover)
                        : const Icon(Icons.image_not_supported),
                    title: Text(p.name ?? ''),
                  );
                },
                onSelected: (_) {},
                builder: (context, controller, focusNode) {
                  return TextField(
                    controller: controller,
                    focusNode: focusNode,
                    decoration: const InputDecoration(
                      labelText: 'Search for products...',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            if (_showFilter) ...[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Filter by Category:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.teal[800],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: MultiSelectChip(
                    categories: _categories,
                    onSelectionChanged: (sel) =>
                        context.read<ProductBloc>().add(CategoriesChanged(sel)),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
            Expanded(
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (_, state) {
                  if (state.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.error != null) {
                    return Center(child: Text('Error: ${state.error}'));
                  }
                  if (state.products.isEmpty) {
                    return const Center(child: Text('No products found.'));
                  }
                  return ListView.builder(
                    itemCount: state.products.length,
                    itemBuilder: (_, i) {
                      final p = state.products[i].node!;
                      final price = p.pricing?.priceRange?.start?.gross;
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 4,
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: p.thumbnail?.url != null
                                ? Image.network(p.thumbnail!.url,
                                    width: 60, height: 60, fit: BoxFit.cover)
                                : Container(
                                    width: 60,
                                    height: 60,
                                    color: Colors.grey[200],
                                    child: const Icon(Icons.image_not_supported),
                                  ),
                          ),
                          title: Text(
                            p.name ?? '',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 4),
                              Text(
                                extractPlainText(p.description),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 6),
                              if (price != null)
                                Text(
                                  '${price.amount.toStringAsFixed(2)} ${price.currency}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                              const SizedBox(height: 4),
                              Text(
                                'Category: ${p.category?.name ?? '-'}',
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
