import 'package:advancedcourse/core/networking/api_service.dart';
import 'package:advancedcourse/core/networking/dio_factory.dart';
import 'package:advancedcourse/features/log_in/data/repos/log_in_repo.dart';
import 'package:advancedcourse/features/log_in/data/repos/log_in_repo_impl.dart';
import 'package:advancedcourse/features/log_in/domain/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio dio = await DioFactory.getDio();
  getIt.registerSingleton<Dio>( DioFactory.getDio());
  getIt.registerSingleton<ApiService>(ApiService(getIt<Dio>()));
  getIt.registerSingleton<LogInRepo>(LogInRepoImpl(apiService: getIt<ApiService>()));
  getIt.registerSingleton<LoginCubit>(LoginCubit(logInRepo: getIt<LogInRepo>()));
}
