// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catbreeds_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatbreedsModel _$CatbreedsModelFromJson(Map<String, dynamic> json) {
  return _CatbreedsModel.fromJson(json);
}

/// @nodoc
mixin _$CatbreedsModel {
  List<BreedModel>? get breeds => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  /// Serializes this CatbreedsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatbreedsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatbreedsModelCopyWith<CatbreedsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatbreedsModelCopyWith<$Res> {
  factory $CatbreedsModelCopyWith(
          CatbreedsModel value, $Res Function(CatbreedsModel) then) =
      _$CatbreedsModelCopyWithImpl<$Res, CatbreedsModel>;
  @useResult
  $Res call(
      {List<BreedModel>? breeds,
      String? id,
      String? url,
      int? width,
      int? height});
}

/// @nodoc
class _$CatbreedsModelCopyWithImpl<$Res, $Val extends CatbreedsModel>
    implements $CatbreedsModelCopyWith<$Res> {
  _$CatbreedsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatbreedsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = freezed,
    Object? id = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      breeds: freezed == breeds
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<BreedModel>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatbreedsModelImplCopyWith<$Res>
    implements $CatbreedsModelCopyWith<$Res> {
  factory _$$CatbreedsModelImplCopyWith(_$CatbreedsModelImpl value,
          $Res Function(_$CatbreedsModelImpl) then) =
      __$$CatbreedsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BreedModel>? breeds,
      String? id,
      String? url,
      int? width,
      int? height});
}

/// @nodoc
class __$$CatbreedsModelImplCopyWithImpl<$Res>
    extends _$CatbreedsModelCopyWithImpl<$Res, _$CatbreedsModelImpl>
    implements _$$CatbreedsModelImplCopyWith<$Res> {
  __$$CatbreedsModelImplCopyWithImpl(
      _$CatbreedsModelImpl _value, $Res Function(_$CatbreedsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatbreedsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breeds = freezed,
    Object? id = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$CatbreedsModelImpl(
      breeds: freezed == breeds
          ? _value._breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<BreedModel>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatbreedsModelImpl implements _CatbreedsModel {
  _$CatbreedsModelImpl(
      {final List<BreedModel>? breeds,
      this.id,
      this.url,
      this.width,
      this.height})
      : _breeds = breeds;

  factory _$CatbreedsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatbreedsModelImplFromJson(json);

  final List<BreedModel>? _breeds;
  @override
  List<BreedModel>? get breeds {
    final value = _breeds;
    if (value == null) return null;
    if (_breeds is EqualUnmodifiableListView) return _breeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? id;
  @override
  final String? url;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'CatbreedsModel(breeds: $breeds, id: $id, url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatbreedsModelImpl &&
            const DeepCollectionEquality().equals(other._breeds, _breeds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_breeds), id, url, width, height);

  /// Create a copy of CatbreedsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatbreedsModelImplCopyWith<_$CatbreedsModelImpl> get copyWith =>
      __$$CatbreedsModelImplCopyWithImpl<_$CatbreedsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatbreedsModelImplToJson(
      this,
    );
  }
}

abstract class _CatbreedsModel implements CatbreedsModel {
  factory _CatbreedsModel(
      {final List<BreedModel>? breeds,
      final String? id,
      final String? url,
      final int? width,
      final int? height}) = _$CatbreedsModelImpl;

  factory _CatbreedsModel.fromJson(Map<String, dynamic> json) =
      _$CatbreedsModelImpl.fromJson;

  @override
  List<BreedModel>? get breeds;
  @override
  String? get id;
  @override
  String? get url;
  @override
  int? get width;
  @override
  int? get height;

  /// Create a copy of CatbreedsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatbreedsModelImplCopyWith<_$CatbreedsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
