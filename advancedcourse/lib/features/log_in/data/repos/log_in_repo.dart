import 'package:advancedcourse/core/networking/api_result.dart';
import 'package:advancedcourse/features/log_in/data/models/log_in_request_body.dart';
import 'package:advancedcourse/features/log_in/data/models/log_in_response_body.dart';

abstract class LogInRepo {
  Future<ApiResult<LogInResponseBody>> logIn({required LogInRequestBody logInRequestBody});
}
