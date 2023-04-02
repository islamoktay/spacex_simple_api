import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spacex_simple_api/feature/home/data/model/rocket_info.dart';
import 'package:spacex_simple_api/feature/home/domain/entities/home_page_state_enum.dart';
import 'package:spacex_simple_api/feature/home/domain/repo/home_repo.dart';
import 'package:spacex_simple_api/feature/home/presentation/bloc/home_bloc.dart';

import 'test_data.dart';

class MockHomeRepo extends Mock implements HomeRepo {}

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockHomeRepo mockHomeRepo;
  late HomeBloc homeBloc;
  
  late List<RocketInfo> rocketInfos;
  setUpAll(() {
    mockHomeRepo = MockHomeRepo();
    homeBloc = HomeBloc(mockHomeRepo);
    rocketInfos = testRocketInfoData;
  });

  group(
    'HomeBloc Test',
    () {
      test(
        'initial state is DashboardState',
        () {
          expect(homeBloc.state, const HomeState.initial());
        },
      );

      blocTest<HomeBloc, HomeState>(
        'emits RocketInfoList when _GetRocketInfo is added.',
        build: () {
          when(
            () => mockHomeRepo.getRocketInfo(),
          ).thenAnswer(
            (invocation) async => Right(rocketInfos),
          );
          return homeBloc;
        },
        act: (bloc) => bloc..add(const HomeEvent.getRocketInfo()),
        expect: () => <HomeState>[
          const HomeState.initial(homepageState: HomePageStateEnum.loading),
          HomeState.initial(
            homepageState: HomePageStateEnum.success,
            rocketInfoList: rocketInfos,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits error when network error.',
        build: () {
          homeBloc = HomeBloc(mockHomeRepo);
          when(
            () => mockHomeRepo.getRocketInfo(),
          ).thenAnswer(
            (invocation) async => const Left(null),
          );
          return homeBloc;
        },
        act: (bloc) => bloc..add(const HomeEvent.getRocketInfo()),
        expect: () => const <HomeState>[
          HomeState.initial(homepageState: HomePageStateEnum.loading),
          HomeState.initial(homepageState: HomePageStateEnum.error),
        ],
      );
    },
  );
}
