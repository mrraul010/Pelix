import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pelix/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:pelix/core/colors.dart';

import 'package:pelix/core/constants.dart';
import 'package:pelix/presentation/newandhot/widgets/comming_soon.dart';
import 'package:pelix/presentation/newandhot/widgets/everyones_watching.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(93),
              child: AppBar(
                title: const Text(
                  "New & Hot",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: kWhite,
                  ),
                ),
                actions: const [
                  Icon(
                    Icons.cast,
                    color: Color.fromARGB(255, 219, 214, 214),
                    size: 30,
                  ),
                  kWidth,
                  CircleAvatar(
                    backgroundColor: Color(0xffFFD54F),
                    radius: 20,
                    child: Icon(
                      Icons.supervised_user_circle,
                      color: Color(0xff6A1B9A),
                    ),
                  ),
                  kWidth,
                ],
                bottom: TabBar(
                    dividerColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: kWhite,
                    labelColor: kBlackColor,
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    indicator: BoxDecoration(
                      color: kWhite,
                      borderRadius: kRadius30,
                    ),
                    tabs: const [
                      Tab(
                        text: "🍿Comin Soon",
                      ),
                      Tab(
                        text: "👁️Everyone Watching",
                      )
                    ]),
              )),
          body: const TabBarView(children: [
            ComingSoonList(key: Key('coming_soon')),
            EveryoneIsWatchingList(
              key: Key('everyone_is_watching'),
            )
          ])),
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(LoadDataInComingSoon());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const LoadDataInComingSoon());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: kButtonColorOrange,
                strokeWidth: 3,
              ),
            );
          } else if (state.hasError) {
            return Center(
              child: Text('Error while loading commingsoonList'),
            );
          } else if (state.comingSoonLIst.isEmpty) {
            return Center(
              child: Text('Comming soon List is Empty'),
            );
          } else {
            return ListView.builder(
                itemCount: state.comingSoonLIst.length,
                padding: EdgeInsets.only(top: 20),
                itemBuilder: (BuildContext context, index) {
                  final movie = state.comingSoonLIst[index];

                  if (movie.id == null) {
                    return SizedBox();
                  }

                  String month = '';
                  String date = '';

                  try {
                    final _date = DateTime.tryParse(movie.releaseDate!);
                    if (_date == null) {
                      throw Exception('Invalid date format');
                    }
                    final formattedDate =
                        DateFormat.yMMMMd('en_US').format(_date);

                    month = formattedDate
                        .split(' ')[0]
                        .substring(0, 3)
                        .toUpperCase();
                    date = _date.day.toString();
                  } catch (e) {
                    log('Error parsing date: $e');
                    month = '';
                    date = '';
                  }

                  return ComingSoonWidget(
                    id: movie.id.toString(),
                    month: month,
                    day: date,
                    posterPath: '$imageAppendUrl${movie.posterPath}',
                    movieName: movie.originalTitle ?? 'No Title we Got',
                    description: movie.overview ?? 'we dont get any info😟',
                  );
                });
          }
        },
      ),
    );
  }
}

class EveryoneIsWatchingList extends StatelessWidget {
  const EveryoneIsWatchingList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const LoadDataInEveryoneIsWatching());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const LoadDataInEveryoneIsWatching());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: kButtonColorOrange,
                strokeWidth: 3,
              ),
            );
          } else if (state.hasError) {
            return Center(
              child: Text('Error while loading EVeryone is Watching'),
            );
          } else if (state.everyOneisWatchingList.isEmpty) {
            return Center(
              child: Text('Everyone is watching List is Empty'),
            );
          } else {
            return ListView.builder(
                padding: EdgeInsets.all(26),
                itemCount: state.everyOneisWatchingList.length,
                itemBuilder: (BuildContext context, index) {
                  final movie = state.everyOneisWatchingList[index];

                  if (movie.id == null) {
                    return SizedBox();
                  }

                  final tv = state.everyOneisWatchingList[index];
                  return EveryonesWatchingWidget(
                    posterPath: '$imageAppendUrl${tv.posterPath}',
                    movieName: tv.originalName ?? 'No name provided',
                    description: tv.overview ?? 'No description',
                  );
                });
          }
        },
      ),
    );
  }
}
