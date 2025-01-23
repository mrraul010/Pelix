import 'package:flutter/material.dart';
import 'package:pelix/core/constants.dart';
import 'package:pelix/presentation/home/widgets/number_card.dart';
import 'package:pelix/presentation/widgets/main_title.dart';

class NumberWidget extends StatelessWidget {
  const NumberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(
          title: "Top 10 TV Show in India",
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => NumberCard(
                      index: index,
                    )),
          ),
        )
      ],
    );
  }
}
