import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String? email;
  final String? password;
  final String? passwordconfirmation;

  final String? name;
  final String? phone;

  SignUpRequestBody(
      {required this.email,
      required this.password,
      required this.passwordconfirmation,
      required this.name,
      required this.phone});

  factory SignUpRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestBodyFromJson(json);
}
