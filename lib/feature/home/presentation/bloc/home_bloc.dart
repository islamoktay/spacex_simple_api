import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/snack_bar/show_snack_bar.dart';
import '../../data/model/rocket_info.dart';
import '../../domain/entities/home_page_state_enum.dart';
import '../../domain/repo/home_repo.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeRepo) : super(const _Initial()) {
    on<_GetRocketInfo>(_onGetRocketInfo);
  }

  final HomeRepo _homeRepo;

  FutureOr<void> _onGetRocketInfo(
    _GetRocketInfo event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(homepageState: HomePageStateEnum.loading));
    final responseEither = await _homeRepo.getRocketInfo();
    responseEither.fold(
      (error) {
        emit(state.copyWith(homepageState: HomePageStateEnum.error));
        customSnackBar(
          content: 'Something went wrong.',
        );
      },
      (data) {
        data.sort((a, b) {
          final cmp = (b.dateUtc ?? DateTime(2000))
              .compareTo(a.dateUtc ?? DateTime(2000));
          if (cmp != 0) return cmp;
          return (b.flightNumber ?? 0).compareTo(a.flightNumber ?? 0);
        });
        emit(
          state.copyWith(
            homepageState: HomePageStateEnum.success,
            rocketInfoList: data,
          ),
        );
      },
    );
  }
}
