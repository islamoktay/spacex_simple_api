import 'package:dartz/dartz.dart';

import '../../../../core/dependency_injection/di.dart';
import '../../../../core/utils/client_service/client_service.dart';
import '../../../../core/utils/client_service/url_constants.dart';
import '../../domain/repo/home_repo.dart';
import '../model/rocket_info.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<void, List<RocketInfo>>> getRocketInfo() async {
    final response = await sl<DioService>().get(
      UrlConstants.spacexUrl,
    );
    if (response.statusCode == 200) {
      final list = <RocketInfo>[];
      final responseList = response.data as List<dynamic>;
      for (final element in responseList) {
        list.add(RocketInfo.fromJson(element as Map<String, dynamic>));
      }
      return Right(list);
    } else {
      return const Left(null);
    }
  }
}
