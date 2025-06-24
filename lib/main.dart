import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/product_list_page.dart';
import 'blocs/product_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();

  final link = HttpLink('https://master.staging.saleor.cloud/graphql/');
  final client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

  runApp(MyApp(client: client)); 
}

class MyApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient> client;

  const MyApp({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: BlocProvider(
        create: (_) => ProductBloc(client.value),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ProductListPage(),
        ),
      ),
    );
  }
}
