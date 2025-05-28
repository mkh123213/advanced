import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  ApiErrorModel({
    required this.code,
    required this.message,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  final int code;
  final String message;

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
