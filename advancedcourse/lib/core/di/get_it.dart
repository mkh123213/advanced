import 'package:advancedcourse/core/networking/api_service.dart';
import 'package:advancedcourse/core/networking/dio_factory.dart';
import 'package:advancedcourse/features/log_in/data/repos/log_in_repo.dart';
import 'package:advancedcourse/features/log_in/data/repos/log_in_repo_impl.dart';
import 'package:advancedcourse/features/log_in/domain/cubit/login_cubit.dart';
import 'package:advancedcourse/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:advancedcourse/features/sign_up/logic/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton(() => DioFactory.getDio());
  getIt.registerLazySingleton(() => ApiService(getIt<Dio>()));
  getIt.registerLazySingleton<LogInRepo>(
      () => LogInRepoImpl(apiService: getIt()));
  getIt.registerSingleton(() => LoginCubit(logInRepo: getIt()));
  getIt.registerLazySingleton(() => SignupCubit(signupRepo: getIt()));
  getIt.registerLazySingleton(() => SignupRepo(apiService: getIt()));
}
