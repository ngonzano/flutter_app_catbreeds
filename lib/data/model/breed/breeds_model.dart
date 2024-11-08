import 'package:flutter_app_catbreeds/data/model/weight/weight_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeds_model.freezed.dart';
part 'breeds_model.g.dart';

@freezed
class BreedModel with _$BreedModel {
  factory BreedModel({
    WeightModel? weight,
    String? id,
    String? name,
    String? cfaUrl,
    String? vetstreetUrl,
    String? vcahospitalsUrl,
    String? temperament,
    String? origin,
    String? countryCodes,
    String? countryCode,
    String? description,
    String? lifeSpan,
    int? indoor,
    int? lap,
    String? altNames,
    int? adaptability,
    int? affectionLevel,
    int? childFriendly,
    int? dogFriendly,
    int? energyLevel,
    int? grooming,
    int? healthIssues,
    int? intelligence,
    int? sheddingLevel,
    int? socialNeeds,
    int? strangerFriendly,
    int? vocalisation,
    int? experimental,
    int? hairless,
    int? natural,
    int? rare,
    int? rex,
    int? suppressedTail,
    int? shortLegs,
    String? wikipediaUrl,
    int? hypoallergenic,
    String? referenceImageId,
  }) = _BreedModel;

  factory BreedModel.fromJson(Map<String, dynamic> json) =>
      _$BreedModelFromJson(json);
}
