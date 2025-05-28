// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponseBody {
  final String message;
  @JsonKey(name: 'data')
  final UserData userData;
  final bool status;
  final int code;

  SignUpResponseBody(
      {required this.message,
      required this.userData,
      required this.status,
      required this.code});

  factory SignUpResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  final String? token;
  final String? username;

  UserData({this.token, this.username});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
