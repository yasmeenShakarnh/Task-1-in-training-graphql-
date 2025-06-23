import 'package:gql/ast.dart';

class Query$GetProducts {
  Query$GetProducts({
    this.products,
    this.$__typename = 'Query',
  });

  factory Query$GetProducts.fromJson(Map<String, dynamic> json) {
    final l$products = json['products'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts(
      products: l$products == null
          ? null
          : Query$GetProducts$products.fromJson(
              (l$products as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetProducts$products? products;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$products = products;
    _resultData['products'] = l$products?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$products = products;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$products,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetProducts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$products = products;
    final lOther$products = other.products;
    if (l$products != lOther$products) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetProducts on Query$GetProducts {
  CopyWith$Query$GetProducts<Query$GetProducts> get copyWith =>
      CopyWith$Query$GetProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetProducts<TRes> {
  factory CopyWith$Query$GetProducts(
    Query$GetProducts instance,
    TRes Function(Query$GetProducts) then,
  ) = _CopyWithImpl$Query$GetProducts;

  factory CopyWith$Query$GetProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProducts;

  TRes call({
    Query$GetProducts$products? products,
    String? $__typename,
  });
  CopyWith$Query$GetProducts$products<TRes> get products;
}

class _CopyWithImpl$Query$GetProducts<TRes>
    implements CopyWith$Query$GetProducts<TRes> {
  _CopyWithImpl$Query$GetProducts(
    this._instance,
    this._then,
  );

  final Query$GetProducts _instance;

  final TRes Function(Query$GetProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? products = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetProducts(
        products: products == _undefined
            ? _instance.products
            : (products as Query$GetProducts$products?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetProducts$products<TRes> get products {
    final local$products = _instance.products;
    return local$products == null
        ? CopyWith$Query$GetProducts$products.stub(_then(_instance))
        : CopyWith$Query$GetProducts$products(
            local$products, (e) => call(products: e));
  }
}

class _CopyWithStubImpl$Query$GetProducts<TRes>
    implements CopyWith$Query$GetProducts<TRes> {
  _CopyWithStubImpl$Query$GetProducts(this._res);

  TRes _res;

  call({
    Query$GetProducts$products? products,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetProducts$products<TRes> get products =>
      CopyWith$Query$GetProducts$products.stub(_res);
}

const documentNodeQueryGetProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetProducts'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'products'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '10'),
          ),
          ArgumentNode(
            name: NameNode(value: 'channel'),
            value: StringValueNode(
              value: 'default-channel',
              isBlock: false,
            ),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thumbnail'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'pricing'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'priceRange'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'start'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: SelectionSetNode(selections: [
                              FieldNode(
                                name: NameNode(value: 'gross'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                    name: NameNode(value: 'amount'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'currency'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ]),
                              ),
                              FieldNode(
                                name: NameNode(value: '__typename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                            ]),
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetProducts$products {
  Query$GetProducts$products({
    required this.edges,
    this.$__typename = 'ProductCountableConnection',
  });

  factory Query$GetProducts$products.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts$products(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$GetProducts$products$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetProducts$products$edges> edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetProducts$products ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetProducts$products
    on Query$GetProducts$products {
  CopyWith$Query$GetProducts$products<Query$GetProducts$products>
      get copyWith => CopyWith$Query$GetProducts$products(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProducts$products<TRes> {
  factory CopyWith$Query$GetProducts$products(
    Query$GetProducts$products instance,
    TRes Function(Query$GetProducts$products) then,
  ) = _CopyWithImpl$Query$GetProducts$products;

  factory CopyWith$Query$GetProducts$products.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProducts$products;

  TRes call({
    List<Query$GetProducts$products$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$GetProducts$products$edges> Function(
              Iterable<
                  CopyWith$Query$GetProducts$products$edges<
                      Query$GetProducts$products$edges>>)
          _fn);
}

class _CopyWithImpl$Query$GetProducts$products<TRes>
    implements CopyWith$Query$GetProducts$products<TRes> {
  _CopyWithImpl$Query$GetProducts$products(
    this._instance,
    this._then,
  );

  final Query$GetProducts$products _instance;

  final TRes Function(Query$GetProducts$products) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetProducts$products(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$GetProducts$products$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$GetProducts$products$edges> Function(
                  Iterable<
                      CopyWith$Query$GetProducts$products$edges<
                          Query$GetProducts$products$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$GetProducts$products$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetProducts$products<TRes>
    implements CopyWith$Query$GetProducts$products<TRes> {
  _CopyWithStubImpl$Query$GetProducts$products(this._res);

  TRes _res;

  call({
    List<Query$GetProducts$products$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$GetProducts$products$edges {
  Query$GetProducts$products$edges({
    required this.node,
    this.$__typename = 'ProductCountableEdge',
  });

  factory Query$GetProducts$products$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts$products$edges(
      node: Query$GetProducts$products$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetProducts$products$edges$node node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetProducts$products$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetProducts$products$edges
    on Query$GetProducts$products$edges {
  CopyWith$Query$GetProducts$products$edges<Query$GetProducts$products$edges>
      get copyWith => CopyWith$Query$GetProducts$products$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProducts$products$edges<TRes> {
  factory CopyWith$Query$GetProducts$products$edges(
    Query$GetProducts$products$edges instance,
    TRes Function(Query$GetProducts$products$edges) then,
  ) = _CopyWithImpl$Query$GetProducts$products$edges;

  factory CopyWith$Query$GetProducts$products$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProducts$products$edges;

  TRes call({
    Query$GetProducts$products$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$GetProducts$products$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetProducts$products$edges<TRes>
    implements CopyWith$Query$GetProducts$products$edges<TRes> {
  _CopyWithImpl$Query$GetProducts$products$edges(
    this._instance,
    this._then,
  );

  final Query$GetProducts$products$edges _instance;

  final TRes Function(Query$GetProducts$products$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetProducts$products$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Query$GetProducts$products$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetProducts$products$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$GetProducts$products$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetProducts$products$edges<TRes>
    implements CopyWith$Query$GetProducts$products$edges<TRes> {
  _CopyWithStubImpl$Query$GetProducts$products$edges(this._res);

  TRes _res;

  call({
    Query$GetProducts$products$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetProducts$products$edges$node<TRes> get node =>
      CopyWith$Query$GetProducts$products$edges$node.stub(_res);
}

class Query$GetProducts$products$edges$node {
  Query$GetProducts$products$edges$node({
    required this.id,
    required this.name,
    this.description,
    this.thumbnail,
    this.pricing,
    this.$__typename = 'Product',
  });

  factory Query$GetProducts$products$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$thumbnail = json['thumbnail'];
    final l$pricing = json['pricing'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts$products$edges$node(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      thumbnail: l$thumbnail == null
          ? null
          : Query$GetProducts$products$edges$node$thumbnail.fromJson(
              (l$thumbnail as Map<String, dynamic>)),
      pricing: l$pricing == null
          ? null
          : Query$GetProducts$products$edges$node$pricing.fromJson(
              (l$pricing as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? description;

  final Query$GetProducts$products$edges$node$thumbnail? thumbnail;

  final Query$GetProducts$products$edges$node$pricing? pricing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail?.toJson();
    final l$pricing = pricing;
    _resultData['pricing'] = l$pricing?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$thumbnail = thumbnail;
    final l$pricing = pricing;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$thumbnail,
      l$pricing,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetProducts$products$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) {
      return false;
    }
    final l$pricing = pricing;
    final lOther$pricing = other.pricing;
    if (l$pricing != lOther$pricing) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetProducts$products$edges$node
    on Query$GetProducts$products$edges$node {
  CopyWith$Query$GetProducts$products$edges$node<
          Query$GetProducts$products$edges$node>
      get copyWith => CopyWith$Query$GetProducts$products$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProducts$products$edges$node<TRes> {
  factory CopyWith$Query$GetProducts$products$edges$node(
    Query$GetProducts$products$edges$node instance,
    TRes Function(Query$GetProducts$products$edges$node) then,
  ) = _CopyWithImpl$Query$GetProducts$products$edges$node;

  factory CopyWith$Query$GetProducts$products$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProducts$products$edges$node;

  TRes call({
    String? id,
    String? name,
    String? description,
    Query$GetProducts$products$edges$node$thumbnail? thumbnail,
    Query$GetProducts$products$edges$node$pricing? pricing,
    String? $__typename,
  });
  CopyWith$Query$GetProducts$products$edges$node$thumbnail<TRes> get thumbnail;
  CopyWith$Query$GetProducts$products$edges$node$pricing<TRes> get pricing;
}

class _CopyWithImpl$Query$GetProducts$products$edges$node<TRes>
    implements CopyWith$Query$GetProducts$products$edges$node<TRes> {
  _CopyWithImpl$Query$GetProducts$products$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetProducts$products$edges$node _instance;

  final TRes Function(Query$GetProducts$products$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? thumbnail = _undefined,
    Object? pricing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetProducts$products$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        thumbnail: thumbnail == _undefined
            ? _instance.thumbnail
            : (thumbnail as Query$GetProducts$products$edges$node$thumbnail?),
        pricing: pricing == _undefined
            ? _instance.pricing
            : (pricing as Query$GetProducts$products$edges$node$pricing?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetProducts$products$edges$node$thumbnail<TRes> get thumbnail {
    final local$thumbnail = _instance.thumbnail;
    return local$thumbnail == null
        ? CopyWith$Query$GetProducts$products$edges$node$thumbnail.stub(
            _then(_instance))
        : CopyWith$Query$GetProducts$products$edges$node$thumbnail(
            local$thumbnail, (e) => call(thumbnail: e));
  }

  CopyWith$Query$GetProducts$products$edges$node$pricing<TRes> get pricing {
    final local$pricing = _instance.pricing;
    return local$pricing == null
        ? CopyWith$Query$GetProducts$products$edges$node$pricing.stub(
            _then(_instance))
        : CopyWith$Query$GetProducts$products$edges$node$pricing(
            local$pricing, (e) => call(pricing: e));
  }
}

class _CopyWithStubImpl$Query$GetProducts$products$edges$node<TRes>
    implements CopyWith$Query$GetProducts$products$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetProducts$products$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Query$GetProducts$products$edges$node$thumbnail? thumbnail,
    Query$GetProducts$products$edges$node$pricing? pricing,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetProducts$products$edges$node$thumbnail<TRes>
      get thumbnail =>
          CopyWith$Query$GetProducts$products$edges$node$thumbnail.stub(_res);

  CopyWith$Query$GetProducts$products$edges$node$pricing<TRes> get pricing =>
      CopyWith$Query$GetProducts$products$edges$node$pricing.stub(_res);
}

class Query$GetProducts$products$edges$node$thumbnail {
  Query$GetProducts$products$edges$node$thumbnail({
    required this.url,
    this.$__typename = 'Image',
  });

  factory Query$GetProducts$products$edges$node$thumbnail.fromJson(
      Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts$products$edges$node$thumbnail(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetProducts$products$edges$node$thumbnail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetProducts$products$edges$node$thumbnail
    on Query$GetProducts$products$edges$node$thumbnail {
  CopyWith$Query$GetProducts$products$edges$node$thumbnail<
          Query$GetProducts$products$edges$node$thumbnail>
      get copyWith => CopyWith$Query$GetProducts$products$edges$node$thumbnail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProducts$products$edges$node$thumbnail<TRes> {
  factory CopyWith$Query$GetProducts$products$edges$node$thumbnail(
    Query$GetProducts$products$edges$node$thumbnail instance,
    TRes Function(Query$GetProducts$products$edges$node$thumbnail) then,
  ) = _CopyWithImpl$Query$GetProducts$products$edges$node$thumbnail;

  factory CopyWith$Query$GetProducts$products$edges$node$thumbnail.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetProducts$products$edges$node$thumbnail;

  TRes call({
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetProducts$products$edges$node$thumbnail<TRes>
    implements CopyWith$Query$GetProducts$products$edges$node$thumbnail<TRes> {
  _CopyWithImpl$Query$GetProducts$products$edges$node$thumbnail(
    this._instance,
    this._then,
  );

  final Query$GetProducts$products$edges$node$thumbnail _instance;

  final TRes Function(Query$GetProducts$products$edges$node$thumbnail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetProducts$products$edges$node$thumbnail(
        url: url == _undefined || url == null ? _instance.url : (url as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetProducts$products$edges$node$thumbnail<TRes>
    implements CopyWith$Query$GetProducts$products$edges$node$thumbnail<TRes> {
  _CopyWithStubImpl$Query$GetProducts$products$edges$node$thumbnail(this._res);

  TRes _res;

  call({
    String? url,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetProducts$products$edges$node$pricing {
  Query$GetProducts$products$edges$node$pricing({
    this.priceRange,
    this.$__typename = 'ProductPricingInfo',
  });

  factory Query$GetProducts$products$edges$node$pricing.fromJson(
      Map<String, dynamic> json) {
    final l$priceRange = json['priceRange'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts$products$edges$node$pricing(
      priceRange: l$priceRange == null
          ? null
          : Query$GetProducts$products$edges$node$pricing$priceRange.fromJson(
              (l$priceRange as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetProducts$products$edges$node$pricing$priceRange? priceRange;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$priceRange = priceRange;
    _resultData['priceRange'] = l$priceRange?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$priceRange = priceRange;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$priceRange,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetProducts$products$edges$node$pricing ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$priceRange = priceRange;
    final lOther$priceRange = other.priceRange;
    if (l$priceRange != lOther$priceRange) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetProducts$products$edges$node$pricing
    on Query$GetProducts$products$edges$node$pricing {
  CopyWith$Query$GetProducts$products$edges$node$pricing<
          Query$GetProducts$products$edges$node$pricing>
      get copyWith => CopyWith$Query$GetProducts$products$edges$node$pricing(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProducts$products$edges$node$pricing<TRes> {
  factory CopyWith$Query$GetProducts$products$edges$node$pricing(
    Query$GetProducts$products$edges$node$pricing instance,
    TRes Function(Query$GetProducts$products$edges$node$pricing) then,
  ) = _CopyWithImpl$Query$GetProducts$products$edges$node$pricing;

  factory CopyWith$Query$GetProducts$products$edges$node$pricing.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetProducts$products$edges$node$pricing;

  TRes call({
    Query$GetProducts$products$edges$node$pricing$priceRange? priceRange,
    String? $__typename,
  });
  CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange<TRes>
      get priceRange;
}

class _CopyWithImpl$Query$GetProducts$products$edges$node$pricing<TRes>
    implements CopyWith$Query$GetProducts$products$edges$node$pricing<TRes> {
  _CopyWithImpl$Query$GetProducts$products$edges$node$pricing(
    this._instance,
    this._then,
  );

  final Query$GetProducts$products$edges$node$pricing _instance;

  final TRes Function(Query$GetProducts$products$edges$node$pricing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? priceRange = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetProducts$products$edges$node$pricing(
        priceRange: priceRange == _undefined
            ? _instance.priceRange
            : (priceRange
                as Query$GetProducts$products$edges$node$pricing$priceRange?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange<TRes>
      get priceRange {
    final local$priceRange = _instance.priceRange;
    return local$priceRange == null
        ? CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange
            .stub(_then(_instance))
        : CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange(
            local$priceRange, (e) => call(priceRange: e));
  }
}

class _CopyWithStubImpl$Query$GetProducts$products$edges$node$pricing<TRes>
    implements CopyWith$Query$GetProducts$products$edges$node$pricing<TRes> {
  _CopyWithStubImpl$Query$GetProducts$products$edges$node$pricing(this._res);

  TRes _res;

  call({
    Query$GetProducts$products$edges$node$pricing$priceRange? priceRange,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange<TRes>
      get priceRange =>
          CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange
              .stub(_res);
}

class Query$GetProducts$products$edges$node$pricing$priceRange {
  Query$GetProducts$products$edges$node$pricing$priceRange({
    this.start,
    this.$__typename = 'TaxedMoneyRange',
  });

  factory Query$GetProducts$products$edges$node$pricing$priceRange.fromJson(
      Map<String, dynamic> json) {
    final l$start = json['start'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts$products$edges$node$pricing$priceRange(
      start: l$start == null
          ? null
          : Query$GetProducts$products$edges$node$pricing$priceRange$start
              .fromJson((l$start as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetProducts$products$edges$node$pricing$priceRange$start? start;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$start = start;
    _resultData['start'] = l$start?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$start = start;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$start,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetProducts$products$edges$node$pricing$priceRange ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$start = start;
    final lOther$start = other.start;
    if (l$start != lOther$start) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetProducts$products$edges$node$pricing$priceRange
    on Query$GetProducts$products$edges$node$pricing$priceRange {
  CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange<
          Query$GetProducts$products$edges$node$pricing$priceRange>
      get copyWith =>
          CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange<
    TRes> {
  factory CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange(
    Query$GetProducts$products$edges$node$pricing$priceRange instance,
    TRes Function(Query$GetProducts$products$edges$node$pricing$priceRange)
        then,
  ) = _CopyWithImpl$Query$GetProducts$products$edges$node$pricing$priceRange;

  factory CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetProducts$products$edges$node$pricing$priceRange;

  TRes call({
    Query$GetProducts$products$edges$node$pricing$priceRange$start? start,
    String? $__typename,
  });
  CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start<TRes>
      get start;
}

class _CopyWithImpl$Query$GetProducts$products$edges$node$pricing$priceRange<
        TRes>
    implements
        CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange<
            TRes> {
  _CopyWithImpl$Query$GetProducts$products$edges$node$pricing$priceRange(
    this._instance,
    this._then,
  );

  final Query$GetProducts$products$edges$node$pricing$priceRange _instance;

  final TRes Function(Query$GetProducts$products$edges$node$pricing$priceRange)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? start = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetProducts$products$edges$node$pricing$priceRange(
        start: start == _undefined
            ? _instance.start
            : (start
                as Query$GetProducts$products$edges$node$pricing$priceRange$start?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start<TRes>
      get start {
    final local$start = _instance.start;
    return local$start == null
        ? CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start
            .stub(_then(_instance))
        : CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start(
            local$start, (e) => call(start: e));
  }
}

class _CopyWithStubImpl$Query$GetProducts$products$edges$node$pricing$priceRange<
        TRes>
    implements
        CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange<
            TRes> {
  _CopyWithStubImpl$Query$GetProducts$products$edges$node$pricing$priceRange(
      this._res);

  TRes _res;

  call({
    Query$GetProducts$products$edges$node$pricing$priceRange$start? start,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start<TRes>
      get start =>
          CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start
              .stub(_res);
}

class Query$GetProducts$products$edges$node$pricing$priceRange$start {
  Query$GetProducts$products$edges$node$pricing$priceRange$start({
    required this.gross,
    this.$__typename = 'TaxedMoney',
  });

  factory Query$GetProducts$products$edges$node$pricing$priceRange$start.fromJson(
      Map<String, dynamic> json) {
    final l$gross = json['gross'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts$products$edges$node$pricing$priceRange$start(
      gross:
          Query$GetProducts$products$edges$node$pricing$priceRange$start$gross
              .fromJson((l$gross as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetProducts$products$edges$node$pricing$priceRange$start$gross
      gross;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gross = gross;
    _resultData['gross'] = l$gross.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gross = gross;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$gross,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetProducts$products$edges$node$pricing$priceRange$start ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gross = gross;
    final lOther$gross = other.gross;
    if (l$gross != lOther$gross) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetProducts$products$edges$node$pricing$priceRange$start
    on Query$GetProducts$products$edges$node$pricing$priceRange$start {
  CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start<
          Query$GetProducts$products$edges$node$pricing$priceRange$start>
      get copyWith =>
          CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start<
    TRes> {
  factory CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start(
    Query$GetProducts$products$edges$node$pricing$priceRange$start instance,
    TRes Function(
            Query$GetProducts$products$edges$node$pricing$priceRange$start)
        then,
  ) = _CopyWithImpl$Query$GetProducts$products$edges$node$pricing$priceRange$start;

  factory CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetProducts$products$edges$node$pricing$priceRange$start;

  TRes call({
    Query$GetProducts$products$edges$node$pricing$priceRange$start$gross? gross,
    String? $__typename,
  });
  CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross<
      TRes> get gross;
}

class _CopyWithImpl$Query$GetProducts$products$edges$node$pricing$priceRange$start<
        TRes>
    implements
        CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start<
            TRes> {
  _CopyWithImpl$Query$GetProducts$products$edges$node$pricing$priceRange$start(
    this._instance,
    this._then,
  );

  final Query$GetProducts$products$edges$node$pricing$priceRange$start
      _instance;

  final TRes Function(
      Query$GetProducts$products$edges$node$pricing$priceRange$start) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gross = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetProducts$products$edges$node$pricing$priceRange$start(
        gross: gross == _undefined || gross == null
            ? _instance.gross
            : (gross
                as Query$GetProducts$products$edges$node$pricing$priceRange$start$gross),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross<
      TRes> get gross {
    final local$gross = _instance.gross;
    return CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross(
        local$gross, (e) => call(gross: e));
  }
}

class _CopyWithStubImpl$Query$GetProducts$products$edges$node$pricing$priceRange$start<
        TRes>
    implements
        CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start<
            TRes> {
  _CopyWithStubImpl$Query$GetProducts$products$edges$node$pricing$priceRange$start(
      this._res);

  TRes _res;

  call({
    Query$GetProducts$products$edges$node$pricing$priceRange$start$gross? gross,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross<
          TRes>
      get gross =>
          CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross
              .stub(_res);
}

class Query$GetProducts$products$edges$node$pricing$priceRange$start$gross {
  Query$GetProducts$products$edges$node$pricing$priceRange$start$gross({
    required this.amount,
    required this.currency,
    this.$__typename = 'Money',
  });

  factory Query$GetProducts$products$edges$node$pricing$priceRange$start$gross.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts$products$edges$node$pricing$priceRange$start$gross(
      amount: (l$amount as num).toDouble(),
      currency: (l$currency as String),
      $__typename: (l$$__typename as String),
    );
  }

  final double amount;

  final String currency;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$currency = currency;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$currency,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetProducts$products$edges$node$pricing$priceRange$start$gross ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross
    on Query$GetProducts$products$edges$node$pricing$priceRange$start$gross {
  CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross<
          Query$GetProducts$products$edges$node$pricing$priceRange$start$gross>
      get copyWith =>
          CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross<
    TRes> {
  factory CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross(
    Query$GetProducts$products$edges$node$pricing$priceRange$start$gross
        instance,
    TRes Function(
            Query$GetProducts$products$edges$node$pricing$priceRange$start$gross)
        then,
  ) = _CopyWithImpl$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross;

  factory CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross;

  TRes call({
    double? amount,
    String? currency,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross<
        TRes>
    implements
        CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross<
            TRes> {
  _CopyWithImpl$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross(
    this._instance,
    this._then,
  );

  final Query$GetProducts$products$edges$node$pricing$priceRange$start$gross
      _instance;

  final TRes Function(
          Query$GetProducts$products$edges$node$pricing$priceRange$start$gross)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetProducts$products$edges$node$pricing$priceRange$start$gross(
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross<
        TRes>
    implements
        CopyWith$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross<
            TRes> {
  _CopyWithStubImpl$Query$GetProducts$products$edges$node$pricing$priceRange$start$gross(
      this._res);

  TRes _res;

  call({
    double? amount,
    String? currency,
    String? $__typename,
  }) =>
      _res;
}
