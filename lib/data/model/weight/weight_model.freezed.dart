// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weight_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeightModel _$WeightModelFromJson(Map<String, dynamic> json) {
  return _WeightModel.fromJson(json);
}

/// @nodoc
mixin _$WeightModel {
  String? get imperial => throw _privateConstructorUsedError;
  String? get metric => throw _privateConstructorUsedError;

  /// Serializes this WeightModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeightModelCopyWith<WeightModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightModelCopyWith<$Res> {
  factory $WeightModelCopyWith(
          WeightModel value, $Res Function(WeightModel) then) =
      _$WeightModelCopyWithImpl<$Res, WeightModel>;
  @useResult
  $Res call({String? imperial, String? metric});
}

/// @nodoc
class _$WeightModelCopyWithImpl<$Res, $Val extends WeightModel>
    implements $WeightModelCopyWith<$Res> {
  _$WeightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imperial = freezed,
    Object? metric = freezed,
  }) {
    return _then(_value.copyWith(
      imperial: freezed == imperial
          ? _value.imperial
          : imperial // ignore: cast_nullable_to_non_nullable
              as String?,
      metric: freezed == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeightModelImplCopyWith<$Res>
    implements $WeightModelCopyWith<$Res> {
  factory _$$WeightModelImplCopyWith(
          _$WeightModelImpl value, $Res Function(_$WeightModelImpl) then) =
      __$$WeightModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imperial, String? metric});
}

/// @nodoc
class __$$WeightModelImplCopyWithImpl<$Res>
    extends _$WeightModelCopyWithImpl<$Res, _$WeightModelImpl>
    implements _$$WeightModelImplCopyWith<$Res> {
  __$$WeightModelImplCopyWithImpl(
      _$WeightModelImpl _value, $Res Function(_$WeightModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imperial = freezed,
    Object? metric = freezed,
  }) {
    return _then(_$WeightModelImpl(
      imperial: freezed == imperial
          ? _value.imperial
          : imperial // ignore: cast_nullable_to_non_nullable
              as String?,
      metric: freezed == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeightModelImpl implements _WeightModel {
  _$WeightModelImpl({this.imperial, this.metric});

  factory _$WeightModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightModelImplFromJson(json);

  @override
  final String? imperial;
  @override
  final String? metric;

  @override
  String toString() {
    return 'WeightModel(imperial: $imperial, metric: $metric)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightModelImpl &&
            (identical(other.imperial, imperial) ||
                other.imperial == imperial) &&
            (identical(other.metric, metric) || other.metric == metric));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imperial, metric);

  /// Create a copy of WeightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightModelImplCopyWith<_$WeightModelImpl> get copyWith =>
      __$$WeightModelImplCopyWithImpl<_$WeightModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightModelImplToJson(
      this,
    );
  }
}

abstract class _WeightModel implements WeightModel {
  factory _WeightModel({final String? imperial, final String? metric}) =
      _$WeightModelImpl;

  factory _WeightModel.fromJson(Map<String, dynamic> json) =
      _$WeightModelImpl.fromJson;

  @override
  String? get imperial;
  @override
  String? get metric;

  /// Create a copy of WeightModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeightModelImplCopyWith<_$WeightModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
