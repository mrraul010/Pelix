import 'package:flutter/material.dart';
import 'package:pelix/core/colors/constants.dart';
import 'package:pelix/presentation/widgets/main_card.dart';
import 'package:pelix/presentation/widgets/main_title.dart';

class MainTitleCaard extends StatelessWidget {
  final String title;
  const MainTitleCaard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => const MainCard()),
          ),
        )
      ],
    );
  }
}
