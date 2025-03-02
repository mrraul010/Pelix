import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pelix/domain/HotandNew/hot_and_new_service.dart';
import 'package:pelix/domain/core/failures/main_failure.dart';
import 'package:pelix/domain/home/home_resp/home_resp.dart';
import 'package:pelix/domain/home/home_service.dart';
import 'package:pelix/domain/hotandnew/hotand_new_resp/hotand_new_resp.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService _homeService;
  final HotAndNewService _hotAndNewtvService;

  HomeBloc(this._homeService, this._hotAndNewtvService)
      : super(HomeState.initial()) {
    on<GetHomeScreenData>((event, emit) async {
      log('Getting Home Data');
      emit(state.copyWith(isLoading: true, hasError: false));

      final _topmovieresult = await _homeService.getHomemovieData();

      final _tvResult = await _homeService.getHometvData();

      final _state1 = _topmovieresult.fold((MainFailure failure) {
        return HomeState(
            stateId: DateTime.now().microsecondsSinceEpoch.toString(),
            pastyearMovieList: [],
            trendingMovieList: [],
            tenseDramasMovieList: [],
            globalMovieList: [],
            trendinganothermovieList: [],
            topratedtvlist: [],
            isLoading: false,
            hasError: true);
      }, (HomeResp resp) {
        final trending = resp.results;
        final pastyear = resp.results;
        final dramas = resp.results;
        final global = resp.results;
        final trendinganother = resp.results;
        pastyear.shuffle();
        dramas.shuffle();
        global.shuffle();
        trendinganother.shuffle();

        return HomeState(
          stateId: DateTime.now().microsecondsSinceEpoch.toString(),
          pastyearMovieList: pastyear,
          trendingMovieList: trending,
          tenseDramasMovieList: dramas,
          globalMovieList: global,
          trendinganothermovieList: trendinganother,
          topratedtvlist: state.topratedtvlist,
          isLoading: false,
          hasError: false,
        );
      });
      emit(_state1);

      final _state2 = _tvResult.fold(
        (MainFailure failure) {
          return HomeState(
              stateId: DateTime.now().microsecondsSinceEpoch.toString(),
              pastyearMovieList: [],
              trendingMovieList: [],
              tenseDramasMovieList: [],
              globalMovieList: [],
              trendinganothermovieList: [],
              topratedtvlist: [],
              isLoading: false,
              hasError: true);
        },
        (HomeResp resp) {
          final top10tvlist = resp.results;
          return HomeState(
            stateId: DateTime.now().microsecondsSinceEpoch.toString(),
            pastyearMovieList: state.pastyearMovieList,
            trendingMovieList: state.trendingMovieList,
            tenseDramasMovieList: state.tenseDramasMovieList,
            globalMovieList: state.globalMovieList,
            trendinganothermovieList: state.trendinganothermovieList,
            topratedtvlist: top10tvlist,
            isLoading: false,
            hasError: false,
          );
        },
      );

      emit(_state2);
    });
  }
}
