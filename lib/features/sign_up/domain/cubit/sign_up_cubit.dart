import 'package:advancedcourse/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:advancedcourse/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:advancedcourse/features/sign_up/domain/cubit/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({required this.signUpRepo}) : super(SignUpState.initial());
  final SignUpRepo signUpRepo;

  Future<void> signup({required SignUpRequestBody signUpRequestBody}) async {
    emit(SignUpState.loading());
    final result = await signUpRepo.signup(signUpRequestBody: signUpRequestBody);
    result.when(success: (data) {
      emit(SignUpState.success(data: data));
    }, failure: (message) {
      emit(SignUpState.error(message: message.apiErrorModel.message));
    });
  }
}
