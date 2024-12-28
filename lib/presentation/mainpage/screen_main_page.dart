import 'package:flutter/material.dart';
import 'package:pelix/presentation/downloads/screen_downloads.dart';
import 'package:pelix/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:pelix/presentation/home/screen_home.dart';
import 'package:pelix/presentation/mainpage/widgets/bottom_nav.dart';
import 'package:pelix/presentation/newandhot/screen_new_and_hot.dart';
import 'package:pelix/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    const Screenhome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            }),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
