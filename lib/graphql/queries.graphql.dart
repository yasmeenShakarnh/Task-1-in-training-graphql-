import 'package:gql/ast.dart';

class Fragment$ProductFields {
  Fragment$ProductFields({
    required this.id,
    required this.name,
    this.description,
    this.thumbnail,
    this.pricing,
    this.category,
    this.$__typename = 'Product',
  });

  factory Fragment$ProductFields.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$thumbnail = json['thumbnail'];
    final l$pricing = json['pricing'];
    final l$category = json['category'];
    final l$$__typename = json['__typename'];
    return Fragment$ProductFields(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      thumbnail: l$thumbnail == null
          ? null
          : Fragment$ProductFields$thumbnail.fromJson(
              (l$thumbnail as Map<String, dynamic>)),
      pricing: l$pricing == null
          ? null
          : Fragment$ProductFields$pricing.fromJson(
              (l$pricing as Map<String, dynamic>)),
      category: l$category == null
          ? null
          : Fragment$ProductFields$category.fromJson(
              (l$category as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? description;

  final Fragment$ProductFields$thumbnail? thumbnail;

  final Fragment$ProductFields$pricing? pricing;

  final Fragment$ProductFields$category? category;

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
    final l$category = category;
    _resultData['category'] = l$category?.toJson();
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
    final l$category = category;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$thumbnail,
      l$pricing,
      l$category,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ProductFields || runtimeType != other.runtimeType) {
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
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
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

extension UtilityExtension$Fragment$ProductFields on Fragment$ProductFields {
  CopyWith$Fragment$ProductFields<Fragment$ProductFields> get copyWith =>
      CopyWith$Fragment$ProductFields(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ProductFields<TRes> {
  factory CopyWith$Fragment$ProductFields(
    Fragment$ProductFields instance,
    TRes Function(Fragment$ProductFields) then,
  ) = _CopyWithImpl$Fragment$ProductFields;

  factory CopyWith$Fragment$ProductFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ProductFields;

  TRes call({
    String? id,
    String? name,
    String? description,
    Fragment$ProductFields$thumbnail? thumbnail,
    Fragment$ProductFields$pricing? pricing,
    Fragment$ProductFields$category? category,
    String? $__typename,
  });
  CopyWith$Fragment$ProductFields$thumbnail<TRes> get thumbnail;
  CopyWith$Fragment$ProductFields$pricing<TRes> get pricing;
  CopyWith$Fragment$ProductFields$category<TRes> get category;
}

class _CopyWithImpl$Fragment$ProductFields<TRes>
    implements CopyWith$Fragment$ProductFields<TRes> {
  _CopyWithImpl$Fragment$ProductFields(
    this._instance,
    this._then,
  );

  final Fragment$ProductFields _instance;

  final TRes Function(Fragment$ProductFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? thumbnail = _undefined,
    Object? pricing = _undefined,
    Object? category = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProductFields(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        thumbnail: thumbnail == _undefined
            ? _instance.thumbnail
            : (thumbnail as Fragment$ProductFields$thumbnail?),
        pricing: pricing == _undefined
            ? _instance.pricing
            : (pricing as Fragment$ProductFields$pricing?),
        category: category == _undefined
            ? _instance.category
            : (category as Fragment$ProductFields$category?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProductFields$thumbnail<TRes> get thumbnail {
    final local$thumbnail = _instance.thumbnail;
    return local$thumbnail == null
        ? CopyWith$Fragment$ProductFields$thumbnail.stub(_then(_instance))
        : CopyWith$Fragment$ProductFields$thumbnail(
            local$thumbnail, (e) => call(thumbnail: e));
  }

  CopyWith$Fragment$ProductFields$pricing<TRes> get pricing {
    final local$pricing = _instance.pricing;
    return local$pricing == null
        ? CopyWith$Fragment$ProductFields$pricing.stub(_then(_instance))
        : CopyWith$Fragment$ProductFields$pricing(
            local$pricing, (e) => call(pricing: e));
  }

  CopyWith$Fragment$ProductFields$category<TRes> get category {
    final local$category = _instance.category;
    return local$category == null
        ? CopyWith$Fragment$ProductFields$category.stub(_then(_instance))
        : CopyWith$Fragment$ProductFields$category(
            local$category, (e) => call(category: e));
  }
}

class _CopyWithStubImpl$Fragment$ProductFields<TRes>
    implements CopyWith$Fragment$ProductFields<TRes> {
  _CopyWithStubImpl$Fragment$ProductFields(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Fragment$ProductFields$thumbnail? thumbnail,
    Fragment$ProductFields$pricing? pricing,
    Fragment$ProductFields$category? category,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProductFields$thumbnail<TRes> get thumbnail =>
      CopyWith$Fragment$ProductFields$thumbnail.stub(_res);

  CopyWith$Fragment$ProductFields$pricing<TRes> get pricing =>
      CopyWith$Fragment$ProductFields$pricing.stub(_res);

  CopyWith$Fragment$ProductFields$category<TRes> get category =>
      CopyWith$Fragment$ProductFields$category.stub(_res);
}

const fragmentDefinitionProductFields = FragmentDefinitionNode(
  name: NameNode(value: 'ProductFields'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Product'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'category'),
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
);
const documentNodeFragmentProductFields = DocumentNode(definitions: [
  fragmentDefinitionProductFields,
]);

class Fragment$ProductFields$thumbnail {
  Fragment$ProductFields$thumbnail({
    required this.url,
    this.$__typename = 'Image',
  });

  factory Fragment$ProductFields$thumbnail.fromJson(Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Fragment$ProductFields$thumbnail(
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
    if (other is! Fragment$ProductFields$thumbnail ||
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

extension UtilityExtension$Fragment$ProductFields$thumbnail
    on Fragment$ProductFields$thumbnail {
  CopyWith$Fragment$ProductFields$thumbnail<Fragment$ProductFields$thumbnail>
      get copyWith => CopyWith$Fragment$ProductFields$thumbnail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ProductFields$thumbnail<TRes> {
  factory CopyWith$Fragment$ProductFields$thumbnail(
    Fragment$ProductFields$thumbnail instance,
    TRes Function(Fragment$ProductFields$thumbnail) then,
  ) = _CopyWithImpl$Fragment$ProductFields$thumbnail;

  factory CopyWith$Fragment$ProductFields$thumbnail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ProductFields$thumbnail;

  TRes call({
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ProductFields$thumbnail<TRes>
    implements CopyWith$Fragment$ProductFields$thumbnail<TRes> {
  _CopyWithImpl$Fragment$ProductFields$thumbnail(
    this._instance,
    this._then,
  );

  final Fragment$ProductFields$thumbnail _instance;

  final TRes Function(Fragment$ProductFields$thumbnail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProductFields$thumbnail(
        url: url == _undefined || url == null ? _instance.url : (url as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ProductFields$thumbnail<TRes>
    implements CopyWith$Fragment$ProductFields$thumbnail<TRes> {
  _CopyWithStubImpl$Fragment$ProductFields$thumbnail(this._res);

  TRes _res;

  call({
    String? url,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ProductFields$pricing {
  Fragment$ProductFields$pricing({
    this.priceRange,
    this.$__typename = 'ProductPricingInfo',
  });

  factory Fragment$ProductFields$pricing.fromJson(Map<String, dynamic> json) {
    final l$priceRange = json['priceRange'];
    final l$$__typename = json['__typename'];
    return Fragment$ProductFields$pricing(
      priceRange: l$priceRange == null
          ? null
          : Fragment$ProductFields$pricing$priceRange.fromJson(
              (l$priceRange as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProductFields$pricing$priceRange? priceRange;

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
    if (other is! Fragment$ProductFields$pricing ||
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

extension UtilityExtension$Fragment$ProductFields$pricing
    on Fragment$ProductFields$pricing {
  CopyWith$Fragment$ProductFields$pricing<Fragment$ProductFields$pricing>
      get copyWith => CopyWith$Fragment$ProductFields$pricing(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ProductFields$pricing<TRes> {
  factory CopyWith$Fragment$ProductFields$pricing(
    Fragment$ProductFields$pricing instance,
    TRes Function(Fragment$ProductFields$pricing) then,
  ) = _CopyWithImpl$Fragment$ProductFields$pricing;

  factory CopyWith$Fragment$ProductFields$pricing.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ProductFields$pricing;

  TRes call({
    Fragment$ProductFields$pricing$priceRange? priceRange,
    String? $__typename,
  });
  CopyWith$Fragment$ProductFields$pricing$priceRange<TRes> get priceRange;
}

class _CopyWithImpl$Fragment$ProductFields$pricing<TRes>
    implements CopyWith$Fragment$ProductFields$pricing<TRes> {
  _CopyWithImpl$Fragment$ProductFields$pricing(
    this._instance,
    this._then,
  );

  final Fragment$ProductFields$pricing _instance;

  final TRes Function(Fragment$ProductFields$pricing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? priceRange = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProductFields$pricing(
        priceRange: priceRange == _undefined
            ? _instance.priceRange
            : (priceRange as Fragment$ProductFields$pricing$priceRange?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProductFields$pricing$priceRange<TRes> get priceRange {
    final local$priceRange = _instance.priceRange;
    return local$priceRange == null
        ? CopyWith$Fragment$ProductFields$pricing$priceRange.stub(
            _then(_instance))
        : CopyWith$Fragment$ProductFields$pricing$priceRange(
            local$priceRange, (e) => call(priceRange: e));
  }
}

class _CopyWithStubImpl$Fragment$ProductFields$pricing<TRes>
    implements CopyWith$Fragment$ProductFields$pricing<TRes> {
  _CopyWithStubImpl$Fragment$ProductFields$pricing(this._res);

  TRes _res;

  call({
    Fragment$ProductFields$pricing$priceRange? priceRange,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProductFields$pricing$priceRange<TRes> get priceRange =>
      CopyWith$Fragment$ProductFields$pricing$priceRange.stub(_res);
}

class Fragment$ProductFields$pricing$priceRange {
  Fragment$ProductFields$pricing$priceRange({
    this.start,
    this.$__typename = 'TaxedMoneyRange',
  });

  factory Fragment$ProductFields$pricing$priceRange.fromJson(
      Map<String, dynamic> json) {
    final l$start = json['start'];
    final l$$__typename = json['__typename'];
    return Fragment$ProductFields$pricing$priceRange(
      start: l$start == null
          ? null
          : Fragment$ProductFields$pricing$priceRange$start.fromJson(
              (l$start as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProductFields$pricing$priceRange$start? start;

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
    if (other is! Fragment$ProductFields$pricing$priceRange ||
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

extension UtilityExtension$Fragment$ProductFields$pricing$priceRange
    on Fragment$ProductFields$pricing$priceRange {
  CopyWith$Fragment$ProductFields$pricing$priceRange<
          Fragment$ProductFields$pricing$priceRange>
      get copyWith => CopyWith$Fragment$ProductFields$pricing$priceRange(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ProductFields$pricing$priceRange<TRes> {
  factory CopyWith$Fragment$ProductFields$pricing$priceRange(
    Fragment$ProductFields$pricing$priceRange instance,
    TRes Function(Fragment$ProductFields$pricing$priceRange) then,
  ) = _CopyWithImpl$Fragment$ProductFields$pricing$priceRange;

  factory CopyWith$Fragment$ProductFields$pricing$priceRange.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ProductFields$pricing$priceRange;

  TRes call({
    Fragment$ProductFields$pricing$priceRange$start? start,
    String? $__typename,
  });
  CopyWith$Fragment$ProductFields$pricing$priceRange$start<TRes> get start;
}

class _CopyWithImpl$Fragment$ProductFields$pricing$priceRange<TRes>
    implements CopyWith$Fragment$ProductFields$pricing$priceRange<TRes> {
  _CopyWithImpl$Fragment$ProductFields$pricing$priceRange(
    this._instance,
    this._then,
  );

  final Fragment$ProductFields$pricing$priceRange _instance;

  final TRes Function(Fragment$ProductFields$pricing$priceRange) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? start = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProductFields$pricing$priceRange(
        start: start == _undefined
            ? _instance.start
            : (start as Fragment$ProductFields$pricing$priceRange$start?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProductFields$pricing$priceRange$start<TRes> get start {
    final local$start = _instance.start;
    return local$start == null
        ? CopyWith$Fragment$ProductFields$pricing$priceRange$start.stub(
            _then(_instance))
        : CopyWith$Fragment$ProductFields$pricing$priceRange$start(
            local$start, (e) => call(start: e));
  }
}

class _CopyWithStubImpl$Fragment$ProductFields$pricing$priceRange<TRes>
    implements CopyWith$Fragment$ProductFields$pricing$priceRange<TRes> {
  _CopyWithStubImpl$Fragment$ProductFields$pricing$priceRange(this._res);

  TRes _res;

  call({
    Fragment$ProductFields$pricing$priceRange$start? start,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProductFields$pricing$priceRange$start<TRes> get start =>
      CopyWith$Fragment$ProductFields$pricing$priceRange$start.stub(_res);
}

class Fragment$ProductFields$pricing$priceRange$start {
  Fragment$ProductFields$pricing$priceRange$start({
    required this.gross,
    this.$__typename = 'TaxedMoney',
  });

  factory Fragment$ProductFields$pricing$priceRange$start.fromJson(
      Map<String, dynamic> json) {
    final l$gross = json['gross'];
    final l$$__typename = json['__typename'];
    return Fragment$ProductFields$pricing$priceRange$start(
      gross: Fragment$ProductFields$pricing$priceRange$start$gross.fromJson(
          (l$gross as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProductFields$pricing$priceRange$start$gross gross;

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
    if (other is! Fragment$ProductFields$pricing$priceRange$start ||
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

extension UtilityExtension$Fragment$ProductFields$pricing$priceRange$start
    on Fragment$ProductFields$pricing$priceRange$start {
  CopyWith$Fragment$ProductFields$pricing$priceRange$start<
          Fragment$ProductFields$pricing$priceRange$start>
      get copyWith => CopyWith$Fragment$ProductFields$pricing$priceRange$start(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ProductFields$pricing$priceRange$start<TRes> {
  factory CopyWith$Fragment$ProductFields$pricing$priceRange$start(
    Fragment$ProductFields$pricing$priceRange$start instance,
    TRes Function(Fragment$ProductFields$pricing$priceRange$start) then,
  ) = _CopyWithImpl$Fragment$ProductFields$pricing$priceRange$start;

  factory CopyWith$Fragment$ProductFields$pricing$priceRange$start.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ProductFields$pricing$priceRange$start;

  TRes call({
    Fragment$ProductFields$pricing$priceRange$start$gross? gross,
    String? $__typename,
  });
  CopyWith$Fragment$ProductFields$pricing$priceRange$start$gross<TRes>
      get gross;
}

class _CopyWithImpl$Fragment$ProductFields$pricing$priceRange$start<TRes>
    implements CopyWith$Fragment$ProductFields$pricing$priceRange$start<TRes> {
  _CopyWithImpl$Fragment$ProductFields$pricing$priceRange$start(
    this._instance,
    this._then,
  );

  final Fragment$ProductFields$pricing$priceRange$start _instance;

  final TRes Function(Fragment$ProductFields$pricing$priceRange$start) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gross = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProductFields$pricing$priceRange$start(
        gross: gross == _undefined || gross == null
            ? _instance.gross
            : (gross as Fragment$ProductFields$pricing$priceRange$start$gross),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProductFields$pricing$priceRange$start$gross<TRes>
      get gross {
    final local$gross = _instance.gross;
    return CopyWith$Fragment$ProductFields$pricing$priceRange$start$gross(
        local$gross, (e) => call(gross: e));
  }
}

class _CopyWithStubImpl$Fragment$ProductFields$pricing$priceRange$start<TRes>
    implements CopyWith$Fragment$ProductFields$pricing$priceRange$start<TRes> {
  _CopyWithStubImpl$Fragment$ProductFields$pricing$priceRange$start(this._res);

  TRes _res;

  call({
    Fragment$ProductFields$pricing$priceRange$start$gross? gross,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProductFields$pricing$priceRange$start$gross<TRes>
      get gross =>
          CopyWith$Fragment$ProductFields$pricing$priceRange$start$gross.stub(
              _res);
}

class Fragment$ProductFields$pricing$priceRange$start$gross {
  Fragment$ProductFields$pricing$priceRange$start$gross({
    required this.amount,
    required this.currency,
    this.$__typename = 'Money',
  });

  factory Fragment$ProductFields$pricing$priceRange$start$gross.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Fragment$ProductFields$pricing$priceRange$start$gross(
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
    if (other is! Fragment$ProductFields$pricing$priceRange$start$gross ||
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

extension UtilityExtension$Fragment$ProductFields$pricing$priceRange$start$gross
    on Fragment$ProductFields$pricing$priceRange$start$gross {
  CopyWith$Fragment$ProductFields$pricing$priceRange$start$gross<
          Fragment$ProductFields$pricing$priceRange$start$gross>
      get copyWith =>
          CopyWith$Fragment$ProductFields$pricing$priceRange$start$gross(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ProductFields$pricing$priceRange$start$gross<
    TRes> {
  factory CopyWith$Fragment$ProductFields$pricing$priceRange$start$gross(
    Fragment$ProductFields$pricing$priceRange$start$gross instance,
    TRes Function(Fragment$ProductFields$pricing$priceRange$start$gross) then,
  ) = _CopyWithImpl$Fragment$ProductFields$pricing$priceRange$start$gross;

  factory CopyWith$Fragment$ProductFields$pricing$priceRange$start$gross.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ProductFields$pricing$priceRange$start$gross;

  TRes call({
    double? amount,
    String? currency,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ProductFields$pricing$priceRange$start$gross<TRes>
    implements
        CopyWith$Fragment$ProductFields$pricing$priceRange$start$gross<TRes> {
  _CopyWithImpl$Fragment$ProductFields$pricing$priceRange$start$gross(
    this._instance,
    this._then,
  );

  final Fragment$ProductFields$pricing$priceRange$start$gross _instance;

  final TRes Function(Fragment$ProductFields$pricing$priceRange$start$gross)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProductFields$pricing$priceRange$start$gross(
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

class _CopyWithStubImpl$Fragment$ProductFields$pricing$priceRange$start$gross<
        TRes>
    implements
        CopyWith$Fragment$ProductFields$pricing$priceRange$start$gross<TRes> {
  _CopyWithStubImpl$Fragment$ProductFields$pricing$priceRange$start$gross(
      this._res);

  TRes _res;

  call({
    double? amount,
    String? currency,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ProductFields$category {
  Fragment$ProductFields$category({
    required this.id,
    required this.name,
    this.$__typename = 'Category',
  });

  factory Fragment$ProductFields$category.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$ProductFields$category(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ProductFields$category ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ProductFields$category
    on Fragment$ProductFields$category {
  CopyWith$Fragment$ProductFields$category<Fragment$ProductFields$category>
      get copyWith => CopyWith$Fragment$ProductFields$category(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ProductFields$category<TRes> {
  factory CopyWith$Fragment$ProductFields$category(
    Fragment$ProductFields$category instance,
    TRes Function(Fragment$ProductFields$category) then,
  ) = _CopyWithImpl$Fragment$ProductFields$category;

  factory CopyWith$Fragment$ProductFields$category.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ProductFields$category;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ProductFields$category<TRes>
    implements CopyWith$Fragment$ProductFields$category<TRes> {
  _CopyWithImpl$Fragment$ProductFields$category(
    this._instance,
    this._then,
  );

  final Fragment$ProductFields$category _instance;

  final TRes Function(Fragment$ProductFields$category) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProductFields$category(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ProductFields$category<TRes>
    implements CopyWith$Fragment$ProductFields$category<TRes> {
  _CopyWithStubImpl$Fragment$ProductFields$category(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetProducts {
  factory Variables$Query$GetProducts({
    String? search,
    List<String>? categoryIds,
  }) =>
      Variables$Query$GetProducts._({
        if (search != null) r'search': search,
        if (categoryIds != null) r'categoryIds': categoryIds,
      });

  Variables$Query$GetProducts._(this._$data);

  factory Variables$Query$GetProducts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('categoryIds')) {
      final l$categoryIds = data['categoryIds'];
      result$data['categoryIds'] =
          (l$categoryIds as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Variables$Query$GetProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get search => (_$data['search'] as String?);

  List<String>? get categoryIds => (_$data['categoryIds'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('categoryIds')) {
      final l$categoryIds = categoryIds;
      result$data['categoryIds'] = l$categoryIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetProducts<Variables$Query$GetProducts>
      get copyWith => CopyWith$Variables$Query$GetProducts(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    final l$categoryIds = categoryIds;
    final lOther$categoryIds = other.categoryIds;
    if (_$data.containsKey('categoryIds') !=
        other._$data.containsKey('categoryIds')) {
      return false;
    }
    if (l$categoryIds != null && lOther$categoryIds != null) {
      if (l$categoryIds.length != lOther$categoryIds.length) {
        return false;
      }
      for (int i = 0; i < l$categoryIds.length; i++) {
        final l$categoryIds$entry = l$categoryIds[i];
        final lOther$categoryIds$entry = lOther$categoryIds[i];
        if (l$categoryIds$entry != lOther$categoryIds$entry) {
          return false;
        }
      }
    } else if (l$categoryIds != lOther$categoryIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$search = search;
    final l$categoryIds = categoryIds;
    return Object.hashAll([
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('categoryIds')
          ? l$categoryIds == null
              ? null
              : Object.hashAll(l$categoryIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetProducts<TRes> {
  factory CopyWith$Variables$Query$GetProducts(
    Variables$Query$GetProducts instance,
    TRes Function(Variables$Query$GetProducts) then,
  ) = _CopyWithImpl$Variables$Query$GetProducts;

  factory CopyWith$Variables$Query$GetProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetProducts;

  TRes call({
    String? search,
    List<String>? categoryIds,
  });
}

class _CopyWithImpl$Variables$Query$GetProducts<TRes>
    implements CopyWith$Variables$Query$GetProducts<TRes> {
  _CopyWithImpl$Variables$Query$GetProducts(
    this._instance,
    this._then,
  );

  final Variables$Query$GetProducts _instance;

  final TRes Function(Variables$Query$GetProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? categoryIds = _undefined,
  }) =>
      _then(Variables$Query$GetProducts._({
        ..._instance._$data,
        if (search != _undefined) 'search': (search as String?),
        if (categoryIds != _undefined)
          'categoryIds': (categoryIds as List<String>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetProducts<TRes>
    implements CopyWith$Variables$Query$GetProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$GetProducts(this._res);

  TRes _res;

  call({
    String? search,
    List<String>? categoryIds,
  }) =>
      _res;
}

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
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'categoryIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ID'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
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
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'categories'),
                value: VariableNode(name: NameNode(value: 'categoryIds')),
              ),
            ]),
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'ProductFields'),
                    directives: [],
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
  fragmentDefinitionProductFields,
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
      node: Fragment$ProductFields.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProductFields node;

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
    Fragment$ProductFields? node,
    String? $__typename,
  });
  CopyWith$Fragment$ProductFields<TRes> get node;
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
            : (node as Fragment$ProductFields),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProductFields<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$ProductFields(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetProducts$products$edges<TRes>
    implements CopyWith$Query$GetProducts$products$edges<TRes> {
  _CopyWithStubImpl$Query$GetProducts$products$edges(this._res);

  TRes _res;

  call({
    Fragment$ProductFields? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProductFields<TRes> get node =>
      CopyWith$Fragment$ProductFields.stub(_res);
}

class Query$GetCategories {
  Query$GetCategories({
    this.categories,
    this.$__typename = 'Query',
  });

  factory Query$GetCategories.fromJson(Map<String, dynamic> json) {
    final l$categories = json['categories'];
    final l$$__typename = json['__typename'];
    return Query$GetCategories(
      categories: l$categories == null
          ? null
          : Query$GetCategories$categories.fromJson(
              (l$categories as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCategories$categories? categories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$categories = categories;
    _resultData['categories'] = l$categories?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$categories = categories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$categories,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCategories || runtimeType != other.runtimeType) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != lOther$categories) {
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

extension UtilityExtension$Query$GetCategories on Query$GetCategories {
  CopyWith$Query$GetCategories<Query$GetCategories> get copyWith =>
      CopyWith$Query$GetCategories(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCategories<TRes> {
  factory CopyWith$Query$GetCategories(
    Query$GetCategories instance,
    TRes Function(Query$GetCategories) then,
  ) = _CopyWithImpl$Query$GetCategories;

  factory CopyWith$Query$GetCategories.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCategories;

  TRes call({
    Query$GetCategories$categories? categories,
    String? $__typename,
  });
  CopyWith$Query$GetCategories$categories<TRes> get categories;
}

class _CopyWithImpl$Query$GetCategories<TRes>
    implements CopyWith$Query$GetCategories<TRes> {
  _CopyWithImpl$Query$GetCategories(
    this._instance,
    this._then,
  );

  final Query$GetCategories _instance;

  final TRes Function(Query$GetCategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? categories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCategories(
        categories: categories == _undefined
            ? _instance.categories
            : (categories as Query$GetCategories$categories?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCategories$categories<TRes> get categories {
    final local$categories = _instance.categories;
    return local$categories == null
        ? CopyWith$Query$GetCategories$categories.stub(_then(_instance))
        : CopyWith$Query$GetCategories$categories(
            local$categories, (e) => call(categories: e));
  }
}

class _CopyWithStubImpl$Query$GetCategories<TRes>
    implements CopyWith$Query$GetCategories<TRes> {
  _CopyWithStubImpl$Query$GetCategories(this._res);

  TRes _res;

  call({
    Query$GetCategories$categories? categories,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCategories$categories<TRes> get categories =>
      CopyWith$Query$GetCategories$categories.stub(_res);
}

const documentNodeQueryGetCategories = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCategories'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'categories'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '10'),
          )
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

class Query$GetCategories$categories {
  Query$GetCategories$categories({
    required this.edges,
    this.$__typename = 'CategoryCountableConnection',
  });

  factory Query$GetCategories$categories.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$GetCategories$categories(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$GetCategories$categories$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetCategories$categories$edges> edges;

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
    if (other is! Query$GetCategories$categories ||
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

extension UtilityExtension$Query$GetCategories$categories
    on Query$GetCategories$categories {
  CopyWith$Query$GetCategories$categories<Query$GetCategories$categories>
      get copyWith => CopyWith$Query$GetCategories$categories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCategories$categories<TRes> {
  factory CopyWith$Query$GetCategories$categories(
    Query$GetCategories$categories instance,
    TRes Function(Query$GetCategories$categories) then,
  ) = _CopyWithImpl$Query$GetCategories$categories;

  factory CopyWith$Query$GetCategories$categories.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCategories$categories;

  TRes call({
    List<Query$GetCategories$categories$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$GetCategories$categories$edges> Function(
              Iterable<
                  CopyWith$Query$GetCategories$categories$edges<
                      Query$GetCategories$categories$edges>>)
          _fn);
}

class _CopyWithImpl$Query$GetCategories$categories<TRes>
    implements CopyWith$Query$GetCategories$categories<TRes> {
  _CopyWithImpl$Query$GetCategories$categories(
    this._instance,
    this._then,
  );

  final Query$GetCategories$categories _instance;

  final TRes Function(Query$GetCategories$categories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCategories$categories(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$GetCategories$categories$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$GetCategories$categories$edges> Function(
                  Iterable<
                      CopyWith$Query$GetCategories$categories$edges<
                          Query$GetCategories$categories$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$GetCategories$categories$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetCategories$categories<TRes>
    implements CopyWith$Query$GetCategories$categories<TRes> {
  _CopyWithStubImpl$Query$GetCategories$categories(this._res);

  TRes _res;

  call({
    List<Query$GetCategories$categories$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$GetCategories$categories$edges {
  Query$GetCategories$categories$edges({
    required this.node,
    this.$__typename = 'CategoryCountableEdge',
  });

  factory Query$GetCategories$categories$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetCategories$categories$edges(
      node: Query$GetCategories$categories$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCategories$categories$edges$node node;

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
    if (other is! Query$GetCategories$categories$edges ||
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

extension UtilityExtension$Query$GetCategories$categories$edges
    on Query$GetCategories$categories$edges {
  CopyWith$Query$GetCategories$categories$edges<
          Query$GetCategories$categories$edges>
      get copyWith => CopyWith$Query$GetCategories$categories$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCategories$categories$edges<TRes> {
  factory CopyWith$Query$GetCategories$categories$edges(
    Query$GetCategories$categories$edges instance,
    TRes Function(Query$GetCategories$categories$edges) then,
  ) = _CopyWithImpl$Query$GetCategories$categories$edges;

  factory CopyWith$Query$GetCategories$categories$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCategories$categories$edges;

  TRes call({
    Query$GetCategories$categories$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$GetCategories$categories$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetCategories$categories$edges<TRes>
    implements CopyWith$Query$GetCategories$categories$edges<TRes> {
  _CopyWithImpl$Query$GetCategories$categories$edges(
    this._instance,
    this._then,
  );

  final Query$GetCategories$categories$edges _instance;

  final TRes Function(Query$GetCategories$categories$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCategories$categories$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Query$GetCategories$categories$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCategories$categories$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$GetCategories$categories$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetCategories$categories$edges<TRes>
    implements CopyWith$Query$GetCategories$categories$edges<TRes> {
  _CopyWithStubImpl$Query$GetCategories$categories$edges(this._res);

  TRes _res;

  call({
    Query$GetCategories$categories$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCategories$categories$edges$node<TRes> get node =>
      CopyWith$Query$GetCategories$categories$edges$node.stub(_res);
}

class Query$GetCategories$categories$edges$node {
  Query$GetCategories$categories$edges$node({
    required this.id,
    required this.name,
    this.$__typename = 'Category',
  });

  factory Query$GetCategories$categories$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetCategories$categories$edges$node(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCategories$categories$edges$node ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCategories$categories$edges$node
    on Query$GetCategories$categories$edges$node {
  CopyWith$Query$GetCategories$categories$edges$node<
          Query$GetCategories$categories$edges$node>
      get copyWith => CopyWith$Query$GetCategories$categories$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCategories$categories$edges$node<TRes> {
  factory CopyWith$Query$GetCategories$categories$edges$node(
    Query$GetCategories$categories$edges$node instance,
    TRes Function(Query$GetCategories$categories$edges$node) then,
  ) = _CopyWithImpl$Query$GetCategories$categories$edges$node;

  factory CopyWith$Query$GetCategories$categories$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCategories$categories$edges$node;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCategories$categories$edges$node<TRes>
    implements CopyWith$Query$GetCategories$categories$edges$node<TRes> {
  _CopyWithImpl$Query$GetCategories$categories$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetCategories$categories$edges$node _instance;

  final TRes Function(Query$GetCategories$categories$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCategories$categories$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCategories$categories$edges$node<TRes>
    implements CopyWith$Query$GetCategories$categories$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetCategories$categories$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
