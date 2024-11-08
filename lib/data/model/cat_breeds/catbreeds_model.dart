import 'package:flutter_app_catbreeds/data/model/breed/breeds_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catbreeds_model.freezed.dart';
part 'catbreeds_model.g.dart';

@freezed
class CatbreedsModel with _$CatbreedsModel {
  factory CatbreedsModel({
    List<BreedModel>? breeds,
    String? id,
    String? url,
    int? width,
    int? height,
  }) = _CatbreedsModel;

  factory CatbreedsModel.fromJson(Map<String, dynamic> json) =>
      _$CatbreedsModelFromJson(json);
}
