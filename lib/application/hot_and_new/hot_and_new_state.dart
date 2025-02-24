part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required List<HotAndNewData> comingSoonLIst,
    required List<HotAndNewData> everyOneisWatchingList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HotAndNewState.initial() => HotAndNewState(
        comingSoonLIst: [],
        everyOneisWatchingList: [],
        isLoading: false,
        hasError: false,
      );
}
