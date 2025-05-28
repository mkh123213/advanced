import 'package:advancedcourse/features/log_in/data/models/log_in_request_body.dart';
import 'package:advancedcourse/features/log_in/data/repos/log_in_repo.dart';
import 'package:advancedcourse/features/log_in/domain/cubit/login_state.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.logInRepo}) : super(LoginState.initial());
  final LogInRepo logInRepo;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Future<void> logIn() async {
    emit(LoginState.loading());
    final result = await logInRepo.logIn(
        logInRequestBody: LogInRequestBody(
            email: emailController.text, password: passwordController.text));
    result.when(success: (data) {
      emit(LoginState.success(data: data));
    }, failure: (fail) {
      emit(LoginState.error(message: fail.apiErrorModel.message));
    });
  }
}
