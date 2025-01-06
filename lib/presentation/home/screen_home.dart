import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pelix/core/colors/colors.dart';
import 'package:pelix/core/colors/constants.dart';
import 'package:pelix/presentation/home/widgets/background_card.dart';
import 'package:pelix/presentation/home/widgets/custom_button_widget.dart';
import 'package:pelix/presentation/home/widgets/number_card.dart';
import 'package:pelix/presentation/home/widgets/number_widget.dart';
import 'package:pelix/presentation/widgets/main_card.dart';
import 'package:pelix/presentation/widgets/main_title.dart';
import 'package:pelix/presentation/widgets/main_titleCaard.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class Screenhome extends StatelessWidget {
  const Screenhome({super.key});

  @override
  Widget build(BuildContext context) {
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
              ListView(
                children: const [
                  BackgroundCard(),
                  MainTitleCaard(
                    title: "Released in the past year",
                  ),
                  kHeight20,
                  MainTitleCaard(
                    title: "Trending Now",
                  ),
                  kHeight20,
                  NumberWidget(),
                  kHeight,
                  MainTitleCaard(
                    title: "Tense Dramas",
                  ),
                  kHeight20,
                  MainTitleCaard(
                    title: "South Indian Cinema",
                  ),
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: Duration(milliseconds: 1500),
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
