import 'package:advancedcourse/core/networking/api_error_handler.dart';
import 'package:advancedcourse/core/networking/api_result.dart';
import 'package:advancedcourse/core/networking/api_service.dart';
import 'package:advancedcourse/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:advancedcourse/features/sign_up/data/models/sign_up_response.dart';

class SignupRepo {
  final ApiService apiService;

  SignupRepo({required this.apiService});

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await apiService.signup(signupRequestBody);
      return ApiResult.success(data: response);
    } catch (errro) {
      return ApiResult.failure(errorHandler: ErrorHandler.handle(errro));
    }
  }
}