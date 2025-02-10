import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelix/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:pelix/core/colors.dart';
import 'package:pelix/core/constants.dart';
import 'package:pelix/domain/downloads/models/downloads.dart';
import 'package:video_player/video_player.dart';
import 'package:share_plus/share_plus.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads moviedata;

  const VideoListItemInheritedWidget(
      {super.key, required this.widget, required this.moviedata})
      : super(child: widget);
  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.moviedata != moviedata;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.moviedata.posterPath;

    return Stack(
      children: [
        FastLaughVideoPlayer(
            videoUrl: dummyVideoUrls[index % dummyVideoUrls.length],
            onStateChanged: (bool) {}),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.black12,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.volume_off))),

                //Right Side

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: posterPath == null
                            ? null
                            : NetworkImage('$imageAppendUrl$posterPath'),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: likedVideosNotifier,
                      builder: (BuildContext c, Set<int> newLikedListIds,
                          Widget? _) {
                        final _index = index;
                        if (newLikedListIds.contains(_index)) {
                          return GestureDetector(
                            onTap: () {
                              // BlocProvider.of<FastLaughBloc>(context)
                              //     .add(UnlikeVideo(id: _index));

                              likedVideosNotifier.value.remove(_index);
                              likedVideosNotifier.notifyListeners();
                            },
                            child: const VideoActionsWidget(
                              icon: Icons.favorite,
                              title: 'Liked',
                              color: Colors.pinkAccent,
                            ),
                          );
                        }
                        return GestureDetector(
                          onTap: () {
                            // BlocProvider.of<FastLaughBloc>(context)
                            //     .add(LikeVideo(id: _index));

                            likedVideosNotifier.value.add(_index);
                            likedVideosNotifier.notifyListeners();
                          },
                          child: const VideoActionsWidget(
                            icon: Icons.emoji_emotions,
                            title: 'Lol',
                            color: Colors.white,
                          ),
                        );
                      },
                    ),
                    ValueListenableBuilder(
                      valueListenable: mylistaddNotifier,
                      builder:
                          (BuildContext c, Set<int> newMylistIds, Widget? _) {
                        final _index = index;
                        if (newMylistIds.contains(_index)) {
                          return GestureDetector(
                            onTap: () {
                              mylistaddNotifier.value.remove(_index);
                              mylistaddNotifier.notifyListeners();
                            },
                            child: VideoActionsWidget(
                              icon: Icons.check,
                              title: 'Added',
                              color: Colors.white,
                            ),
                          );
                        }
                        return GestureDetector(
                          onTap: () {
                            mylistaddNotifier.value.add(_index);
                            mylistaddNotifier.notifyListeners();
                          },
                          child: VideoActionsWidget(
                            icon: Icons.add,
                            title: 'MY list',
                            color: Colors.white,
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                        onTap: () {
                          final movieName =
                              VideoListItemInheritedWidget.of(context)
                                  ?.moviedata
                                  .title;

                          if (movieName != null) {
                            log(movieName.toString());
                            Share.share(movieName);
                          }
                        },
                        child: const VideoActionsWidget(
                          icon: Icons.share,
                          title: 'Share',
                          color: Colors.white,
                        )),
                    const VideoActionsWidget(
                      icon: Icons.play_arrow,
                      title: 'Play',
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final Color color;

  final String title;
  const VideoActionsWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              color: kWhite,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVideoPlayer(
      {super.key, required this.videoUrl, required this.onStateChanged});

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: kButtonColorOrange,
              ),
            ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
