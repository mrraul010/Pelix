part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateId,
    required List<HomeData> pastyearMovieList,
    required List<HomeData> trendingMovieList,
    required List<HomeData> tenseDramasMovieList,
    required List<HomeData> globalMovieList,
    required List<HomeData> trendinganothermovieList,
    required List<HomeData> topratedtvlist,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
      stateId: '0',
      pastyearMovieList: [],
      trendingMovieList: [],
      tenseDramasMovieList: [],
      globalMovieList: [],
      trendinganothermovieList: [],
      isLoading: false,
      hasError: false,
      topratedtvlist: []);
}
