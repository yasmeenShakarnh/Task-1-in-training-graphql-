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

  @override
  void initState() {
    super.initState();
    _loadCategories();
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
      appBar: AppBar(title: const Text('Products Browser')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TypeAheadField<Query$GetProducts$products$edges>(
              suggestionsCallback: (pattern) async {
                context.read<ProductBloc>().add(GetSuggestions(pattern));
                await Future.delayed(const Duration(milliseconds: 300));
                return context.read<ProductBloc>().state.products;
              },
              itemBuilder: (_, suggestion) {
                final p = suggestion.node!;
                return ListTile(
                  leading: p.thumbnail?.url != null
                      ? Image.network(p.thumbnail!.url,
                          width: 40, height: 40, fit: BoxFit.cover)
                      : const Icon(Icons.image_not_supported),
                  title: Text(p.name ?? ''),
                );
              },
              onSelected: (suggestion) {
                // يمكن تنفيذ شيء عند اختيار عنصر
              },
              builder: (context, controller, focusNode) {
                return TextField(
                  controller: controller,
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    labelText: 'Search products...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            MultiSelectChip(
              categories: _categories,
              onSelectionChanged: (sel) => context
                  .read<ProductBloc>()
                  .add(CategoriesChanged(sel)),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (_, state) {
                  if (state.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.error != null) {
                    return Center(child: Text('Error: ${state.error}'));
                  }
                  return ListView.builder(
                    itemCount: state.products.length,
                    itemBuilder: (_, i) {
                      final p = state.products[i].node!;
                      final price = p.pricing?.priceRange?.start?.gross;
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 2,
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: p.thumbnail?.url != null
                                ? Image.network(p.thumbnail!.url,
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover)
                                : Container(
                                    width: 60,
                                    height: 60,
                                    color: Colors.grey[200],
                                    child: const Icon(
                                        Icons.image_not_supported)),
                          ),
                          title: Text(p.name ?? '',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold)),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 4),
                              Text(extractPlainText(p.description),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis),
                              const SizedBox(height: 6),
                              if (price != null)
                                Text(
                                  '${price.amount.toStringAsFixed(2)} ${price.currency}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                              const SizedBox(height: 4),
                              Text('Category: ${p.category?.name ?? '-'}',
                                  style:
                                      const TextStyle(color: Colors.grey)),
                            ],
                          ),
                          onTap: () {},
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
