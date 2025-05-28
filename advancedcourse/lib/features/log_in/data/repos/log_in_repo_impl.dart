import 'package:advancedcourse/core/networking/api_error_handler.dart';
import 'package:advancedcourse/core/networking/api_result.dart';
import 'package:advancedcourse/core/networking/api_service.dart';
import 'package:advancedcourse/features/log_in/data/models/log_in_request_body.dart';
import 'package:advancedcourse/features/log_in/data/models/log_in_response_body.dart';
import 'package:advancedcourse/features/log_in/data/repos/log_in_repo.dart';

class LogInRepoImpl implements LogInRepo {
  final ApiService _apiService;

  LogInRepoImpl({required ApiService apiService}) : _apiService = apiService;
  @override
  Future<ApiResult<LogInResponseBody>> logIn(
      {required LogInRequestBody logInRequestBody}) async {
    // TODO: implement logIn
    try {
      final result = await _apiService.login(logInRequestBody);
      return ApiResult.success(data: result);
    } catch (e) {
      // TODO
      return ApiResult.failure(errorHandler: ErrorHandler.handle(e));
    }
  }
}
