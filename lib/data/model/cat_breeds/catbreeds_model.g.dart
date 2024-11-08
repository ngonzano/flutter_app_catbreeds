// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catbreeds_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatbreedsModelImpl _$$CatbreedsModelImplFromJson(Map<String, dynamic> json) =>
    _$CatbreedsModelImpl(
      breeds: (json['breeds'] as List<dynamic>?)
          ?.map((e) => BreedModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      url: json['url'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CatbreedsModelImplToJson(
        _$CatbreedsModelImpl instance) =>
    <String, dynamic>{
      'breeds': instance.breeds,
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
