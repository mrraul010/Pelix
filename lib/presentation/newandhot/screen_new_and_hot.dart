import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pelix/core/colors/colors.dart';
import 'package:pelix/core/colors/constants.dart';
import 'package:pelix/presentation/home/widgets/custom_button_widget.dart';
import 'package:pelix/presentation/newandhot/widgets/comming_soon.dart';

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
          body: TabBarView(children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ])),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, index) => ComingSoonWidget());
  }

  Widget _buildEveryonesWatching() {
    return Container();
  }
}
