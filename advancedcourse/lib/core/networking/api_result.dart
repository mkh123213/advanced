import 'package:advancedcourse/core/networking/api_error_handler.dart';
// import 'package:flutter_complete_project/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success({required T data}) = Success<T>;
  const factory ApiResult.failure({required ErrorHandler errorHandler}) = Failure<T>;
}
