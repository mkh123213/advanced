import 'package:advancedcourse/core/networking/api_constants.dart';
import 'package:advancedcourse/features/log_in/data/models/log_in_request_body.dart';
import 'package:advancedcourse/features/log_in/data/models/log_in_response_body.dart';
import 'package:advancedcourse/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:advancedcourse/features/sign_up/data/models/sign_up_response.dart';
import 'package:dio/dio.dart';
// import 'package:flutter_complete_project/core/networking/api_constants.dart';
// import 'package:flutter_complete_project/features/login/data/models/login_request_body.dart';
// import 'package:flutter_complete_project/features/login/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';

// import '../../features/sign_up/data/models/sign_up_request_body.dart';
// import '../../features/sign_up/data/models/sign_up_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // @POST(ApiConstants.login)
  // Future<LoginResponse> login(
  //   @Body() LoginRequestBody loginRequestBody,
  // );

  // @POST(ApiConstants.signup)
  // Future<SignupResponse> signup(
  //   @Body() SignupRequestBody signupRequestBody,
  // );


  @POST(ApiConstants.login)
  Future<LogInResponseBody> login(
    @Body() LogInRequestBody loginRequestBody,
  );
  @POST(ApiConstants.signup)
  Future<SignUpResponseBody> signup(
    @Body() SignUpRequestBody signUpRequestBody,
  );
}
