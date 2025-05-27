import 'package:advancedcourse/core/networking/api_error_handler.dart';
import 'package:advancedcourse/core/networking/api_result.dart';
import 'package:advancedcourse/core/networking/api_service.dart';
import 'package:advancedcourse/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:advancedcourse/features/sign_up/data/models/sign_up_response.dart';
import 'package:advancedcourse/features/sign_up/data/repos/sign_up_repo.dart';

class SignUpRepoImpl implements SignUpRepo {
  final ApiService apiService;
  SignUpRepoImpl({required this.apiService});
  @override
  Future<ApiResult<SignUpResponseBody>> signup(
      {required SignUpRequestBody signUpRequestBody}) async {
    // TODO: implement signup
    try {
      final result = await apiService.signup(signUpRequestBody);
      return ApiResult.success(data: result);
    } catch (e) {
      // TODO
      return ApiResult.failure(errorHandler: ErrorHandler.handle(e));
    }
  }
}
