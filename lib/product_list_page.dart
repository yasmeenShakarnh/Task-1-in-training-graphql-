import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:saleor_products_app/graphql/queries.graphql.dart'; 

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Query(
        options: QueryOptions(
          document: documentNodeQueryGetProducts,
        ),
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (result.hasException) {
            return Center(child: Text(result.exception.toString()));
          }

          final data = Query$GetProducts.fromJson(result.data!);
          final products = data.products?.edges ?? [];

          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index].node!;
              return ListTile(
                leading: Image.network(product.thumbnail?.url ?? ''),
                title: Text(product.name ?? 'No Name'),
                subtitle: Text(product.description ?? 'No Description'),
              );
            },
          );
        },
      ),
    );
  }
}
