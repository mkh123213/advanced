import 'package:freezed_annotation/freezed_annotation.dart';
part 'log_in_response_body.g.dart';
@JsonSerializable()
class LogInResponseBody {
  final String message;
  @JsonKey(name: 'data')
  final UserData userdata;
    final bool status;

  final int code;

  LogInResponseBody({
    required this.message,
    required this.userdata,
    required this.status,
    required this.code,
  });
  factory LogInResponseBody.fromJson(Map<String, dynamic> json) => _$LogInResponseBodyFromJson(json);

}
@JsonSerializable()
class UserData {
  final String? username;
  final String ?token;

  UserData({
     this.username,
     this.token,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

}
