import 'package:get_it/get_it.dart';
import 'package:spacex_simple_api/core/utils/client_service/client_service.dart';
import 'package:spacex_simple_api/core/router/route_management.gr.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl
    //! Factories
    ..registerFactory<DioService>(DioService.new)

    //! Lazy Singletons
    ..registerLazySingleton<AppRouter>(AppRouter.new);
}
