import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pelix/domain/downloads/i_downloads_repo.dart';
import 'package:pelix/domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final dummyVideoUrls = [
  "https://ia600606.us.archive.org/15/items/CharlieChaplin/Chaplin_512kb.mp4",
  "https://ia801502.us.archive.org/24/items/mr-bean-the-complete-live-action-series/Mr.%20Bean%20S01E01%20-%20Mr.%20Bean.mp4",
  "https://dn720406.ca.archive.org/0/items/1995-6-cc-adz/1995-6%20CC%20Adz.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IDownloadsRepo downloadService,
  ) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      //sending loading to ui
      emit(const FastLaughState(
          videosList: [], isLoading: true, isError: false));

      // get trending
      final result = await downloadService.getDownloadsImages();

      final state = result.fold((l) {
        return const FastLaughState(
            videosList: [], isLoading: false, isError: true);
      },
          (resp) => FastLaughState(
              videosList: resp, isLoading: false, isError: false));
      //send to ui

      emit(state);
    });
  }
}
