// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogInResponseBody _$LogInResponseBodyFromJson(Map<String, dynamic> json) =>
    LogInResponseBody(
      message: json['message'] as String,
      userdata: UserData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$LogInResponseBodyToJson(LogInResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userdata,
      'status': instance.status,
      'code': instance.code,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      username: json['username'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'username': instance.username,
      'token': instance.token,
    };
