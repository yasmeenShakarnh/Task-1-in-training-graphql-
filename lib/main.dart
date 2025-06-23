import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'product_list_page.dart';

void main() async {
  await initHiveForFlutter(); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final HttpLink httpLink = HttpLink('https://master.staging.saleor.cloud/graphql/');

  @override
  Widget build(BuildContext context) {
    final client = ValueNotifier(
      GraphQLClient(
        link: httpLink,
        cache: GraphQLCache(store: HiveStore()),
      ),
    );

    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'Saleor Products',
        home: ProductListPage(),
      ),
    );
  }
}
