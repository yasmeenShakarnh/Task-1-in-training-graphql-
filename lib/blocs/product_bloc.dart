import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../graphql/queries.graphql.dart';

abstract class ProductEvent {}
class SearchChanged extends ProductEvent {
  final String search;
  SearchChanged(this.search);
}
class GetSuggestions extends ProductEvent {
  final String search;
  GetSuggestions(this.search);
}
class CategoriesChanged extends ProductEvent {
  final List<String> categoryIds;
  CategoriesChanged(this.categoryIds);
}

class ProductState {
  final bool loading;
  final String? error;
  final List<Query$GetProducts$products$edges> products;
  ProductState({this.loading = false, this.error, this.products = const []});
}

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GraphQLClient client;
  String _search = '';
  List<String> _categories = [];

  ProductBloc(this.client) : super(ProductState()) {
    on<SearchChanged>(
      _onSearchChanged,
      transformer: (events, mapper) => events.debounceTime(const Duration(milliseconds: 400)).switchMap(mapper),
    );
    on<GetSuggestions>(_onGetSuggestions);
    on<CategoriesChanged>(_onCategoriesChanged);
    add(GetSuggestions(''));
  }

  Future<void> _onSearchChanged(SearchChanged e, Emitter<ProductState> emit) async {
    _search = e.search;
    await _fetchProducts(emit);
  }

  Future<void> _onGetSuggestions(GetSuggestions e, Emitter<ProductState> emit) async {
    _search = e.search;
    await _fetchProducts(emit);
  }

  Future<void> _onCategoriesChanged(CategoriesChanged e, Emitter<ProductState> emit) async {
    _categories = e.categoryIds;
    await _fetchProducts(emit);
  }

  Future<void> _fetchProducts([Emitter<ProductState>? emit]) async {
    emit?.call(ProductState(loading: true, products: state.products));
    final res = await client.query(QueryOptions(
      document: documentNodeQueryGetProducts,
      variables: {
        'search': _search.isEmpty ? null : _search,
        'categoryIds': _categories.isEmpty ? null : _categories,
      },
    ));
    if (res.hasException) {
      emit?.call(ProductState(error: res.exception.toString()));
    } else {
      final data = Query$GetProducts.fromJson(res.data!);
      emit?.call(ProductState(products: data.products?.edges ?? []));
    }
  }
}
