import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelix/application/home/home_bloc.dart';
import 'package:pelix/core/colors.dart';
import 'package:pelix/core/constants.dart';
import 'package:pelix/presentation/home/widgets/background_card.dart';
import 'package:pelix/presentation/home/widgets/number_widget.dart';
import 'package:pelix/presentation/widgets/main_titleCaard.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class Screenhome extends StatelessWidget {
  const Screenhome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(GetHomeScreenData());
    });
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 6,
                        color: kButtonColorOrange,
                      ),
                    );
                  }
                  if (state.hasError) {
                    return Center(
                      child: Text(
                        'Error while getting  data',
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }

                  final _releasepastyear = state.pastyearMovieList.map((m) {
                    return '$imageAppendUrl${m.posterPath}';
                  }).toList();
                  _releasepastyear.shuffle();

                  final _trendingmovies = state.trendingMovieList.map((m) {
                    return '$imageAppendUrl${m.posterPath}';
                  }).toList();
                  _trendingmovies.shuffle();

                  final _tensedramas = state.tenseDramasMovieList.map((m) {
                    return '$imageAppendUrl${m.posterPath}';
                  }).toList();
                  _tensedramas.shuffle();

                  final _global = state.globalMovieList.map((m) {
                    return '$imageAppendUrl${m.posterPath}';
                  }).toList();
                  _global.shuffle();

                  final top10tvshowsli = state.topratedtvlist.map((t) {
                    return '$imageAppendUrl${t.posterPath}';
                  }).toList();
                  print(top10tvshowsli.length);
                  return ListView(
                    children: [
                      BackgroundCard(),
                      MainTitleCaard(
                        title: "EverTime Classics",
                        posterList: _releasepastyear.take(10).toList(),
                      ),
                      kHeight20,
                      MainTitleCaard(
                        title: "Trending Now",
                        posterList: _trendingmovies.take(10).toList(),
                      ),
                      kHeight20,
                      kHeight,
                      NumberWidget(
                        postersList: top10tvshowsli.take(10).toList(),
                      ),
                      MainTitleCaard(
                        title: "Tense Dramas",
                        posterList: _tensedramas.take(10).toList(),
                      ),
                      kHeight20,
                      MainTitleCaard(
                        title: "GlobalCinema",
                        posterList: _global.take(10).toList(),
                      ),
                    ],
                  );
                },
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 1500),
                      width: double.infinity,
                      height: 90,
                      color: Colors.black.withOpacity(0.6),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              kWidth,
                              kHeight,
                              Image.asset(
                                'assets/pelixlogo.png',
                                width: 60,
                                height: 60,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                color: Color.fromARGB(255, 219, 214, 214),
                                size: 30,
                              ),
                              kWidth,
                              const CircleAvatar(
                                backgroundColor: Color(0xffFFD54F),
                                radius: 20,
                                child: Icon(
                                  Icons.supervised_user_circle,
                                  color: Color(0xff6A1B9A),
                                ),
                              ),
                              kWidth,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Movies",
                                style: kHomeTitleText,
                              ),
                              Text(
                                "Tv Shows",
                                style: kHomeTitleText,
                              ),
                              Text(
                                "Categories",
                                style: kHomeTitleText,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  : kHeight,
            ],
          ),
        );
      },
    ));
  }
}


//created by P Rahul Raj