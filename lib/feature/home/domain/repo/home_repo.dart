import 'package:dartz/dartz.dart';
import '../../data/model/rocket_info.dart';

abstract class HomeRepo {
  Future<Either<void, List<RocketInfo>>> getRocketInfo();
}
