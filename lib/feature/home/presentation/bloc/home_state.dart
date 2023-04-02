part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default(HomePageStateEnum.initial) HomePageStateEnum homepageState,
    @Default(<RocketInfo>[]) List<RocketInfo> rocketInfoList,
  }) = _Initial;
}
