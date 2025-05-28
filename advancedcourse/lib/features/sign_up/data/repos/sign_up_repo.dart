import 'package:advancedcourse/core/networking/api_result.dart';

import 'package:advancedcourse/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:advancedcourse/features/sign_up/data/models/sign_up_response.dart';

abstract class SignUpRepo {
  Future<ApiResult<SignUpResponseBody>>signup({required SignUpRequestBody signUpRequestBody});
}
