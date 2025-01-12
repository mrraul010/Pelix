import 'package:flutter/material.dart';
import 'package:pelix/core/colors/colors.dart';
import 'package:pelix/core/colors/constants.dart';
import 'package:pelix/presentation/home/widgets/custom_button_widget.dart';
import 'package:pelix/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Text(
          "Friends",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        Text(
          "Six young people from New York City, on their own and struggling to survive in the real world, find the companionship, comfort and support they get from each other to be the perfect antidote to the pressures of life",
          style: TextStyle(
            color: kGreyColor,
          ),
        ),
        kHeight50,
        VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget(
              icon: Icons.telegram,
              title: 'Share',
              iconsize: 25,
              textsize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: 'add',
              iconsize: 25,
              textsize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: 'Play',
              iconsize: 25,
              textsize: 16,
            ),
          ],
        )
      ],
    );
  }
}
