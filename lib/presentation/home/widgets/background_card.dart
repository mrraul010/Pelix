import 'package:flutter/material.dart';
import 'package:pelix/core/colors.dart';
import 'package:pelix/core/constants.dart';
import 'package:pelix/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage(kMainImage))),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CustomButtonWidget(
                    icon: Icons.add,
                    title: "My List",
                  ),
                  _PlayButton(),
                  const CustomButtonWidget(
                    icon: Icons.info,
                    title: "info",
                  ),
                ],
              ),
            ))
      ],
    );
  }

  TextButton _PlayButton() {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(backgroundColor: WidgetStateProperty.all(kWhite)),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "Play",
          style: TextStyle(
            fontSize: 20,
            color: kBlackColor,
          ),
        ),
      ),
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: kBlackColor,
      ),
    );
  }
}
