import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pelix/domain/HotandNew/hot_and_new_service.dart';
import 'package:pelix/domain/core/failures/main_failure.dart';
import 'package:pelix/domain/hotandnew/hotand_new_resp/hotand_new_resp.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewService _hotAndNewService;

  HotAndNewBloc(this._hotAndNewService) : super(HotAndNewState.initial()) {
    //get hot and new movie data
    on<LoadDataInComingSoon>((event, emit) async {
      emit(HotAndNewState(
          comingSoonLIst: [],
          everyOneisWatchingList: [],
          isLoading: true,
          hasError: false));

      final _result = await _hotAndNewService.getHotAndNewMovieData();

      final newState = _result.fold(
        (MainFailure failure) {
          return HotAndNewState(
              comingSoonLIst: [],
              everyOneisWatchingList: [],
              isLoading: false,
              hasError: true);
        },
        (HotandNewResp resp) {
          return HotAndNewState(
            comingSoonLIst: resp.results,
            everyOneisWatchingList: state.everyOneisWatchingList,
            isLoading: false,
            hasError: false,
          );
        },
      );

      emit(newState);
    });

// get hot and new tv data
    on<LoadDataInEveryoneIsWatching>((event, emit) async {
      emit(HotAndNewState(
          comingSoonLIst: [],
          everyOneisWatchingList: [],
          isLoading: true,
          hasError: false));

      final _result = await _hotAndNewService.getHotAndNewTvData();

      final newState = _result.fold(
        (MainFailure failure) {
          return HotAndNewState(
              comingSoonLIst: [],
              everyOneisWatchingList: [],
              isLoading: false,
              hasError: true);
        },
        (HotandNewResp resp) {
          return HotAndNewState(
            comingSoonLIst: state.comingSoonLIst,
            everyOneisWatchingList: resp.results,
            isLoading: false,
            hasError: false,
          );
        },
      );

      emit(newState);
    });
  }
}
