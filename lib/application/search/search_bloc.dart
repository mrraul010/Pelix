import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pelix/domain/core/failures/main_failure.dart';
import 'package:pelix/domain/downloads/i_downloads_repo.dart';
import 'package:pelix/domain/downloads/models/downloads.dart';
import 'package:pelix/domain/search/model/search_resp/search_resp.dart';
import 'package:pelix/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;

  SearchBloc(this._downloadsService, this._searchService)
      : super(SearchState.initial()) {
    /*
    IDLE STATE
     */
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchState(
            searchResults: [],
            idleList: state.idleList,
            isLoading: false,
            isError: false));
        return;
      }

      emit(const SearchState(
          searchResults: [], idleList: [], isLoading: true, isError: false));

      // get trending
      final result = await _downloadsService.getDownloadsImages();
      final state = result.fold((MainFailure f) {
        return const SearchState(
            searchResults: [], idleList: [], isLoading: false, isError: true);
      }, (List<Downloads> list) {
        return SearchState(
            searchResults: const [],
            idleList: list,
            isLoading: false,
            isError: false);
      });
      // show to ui
      emit(state);
    });

/* 
    Search Result State
     */

    on<SearchMovie>((event, emit) async {
//call search movie api
      log('searching For ${event.MovieQuery}');

      emit(const SearchState(
          searchResults: [], idleList: [], isLoading: true, isError: false));
      final result =
          await _searchService.searchMovies(movieQuery: event.MovieQuery);

      final state = result.fold(
        (MainFailure f) {
          return const SearchState(
              searchResults: [], idleList: [], isLoading: false, isError: true);
        },
        (SearchResp r) {
          return SearchState(
              searchResults: r.results,
              idleList: [],
              isLoading: false,
              isError: false);
        },
      );
//show to ui
      emit(state);
    });
  }
}
