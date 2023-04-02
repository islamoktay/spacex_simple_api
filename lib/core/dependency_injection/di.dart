import 'package:get_it/get_it.dart';
import 'package:spacex_simple_api/core/utils/date_util/date_util.dart';
import '../utils/client_service/client_service.dart';
import '../router/route_management.gr.dart';
import '../../feature/home/data/repo_impl/home_repo_impl.dart';
import '../../feature/home/domain/repo/home_repo.dart';
import '../../feature/home/presentation/bloc/home_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl
    //! Factories
    ..registerFactory<DioService>(DioService.new)

    //! Lazy Singletons
    //* Utils
    ..registerLazySingleton<AppRouter>(AppRouter.new)
    ..registerLazySingleton<DateUtil>(DateUtil.new)

    //* Repos
    ..registerLazySingleton<HomeRepo>(HomeRepoImpl.new)

    //* BLoCs
    ..registerLazySingleton<HomeBloc>(
      () => HomeBloc(sl()),
    );
}
