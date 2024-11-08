import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight_model.freezed.dart';
part 'weight_model.g.dart';

@freezed
class WeightModel with _$WeightModel {
  factory WeightModel({
    String? imperial,
    String? metric,
  }) = _WeightModel;

  factory WeightModel.fromJson(Map<String, dynamic> json) =>
      _$WeightModelFromJson(json);
}
