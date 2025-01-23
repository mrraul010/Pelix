import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:pelix/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 140,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: kRadius20,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://image.tmdb.org/t/p/original/6BoR5jUXNZRtE1mCQgmnI63lGcN.jpg'))),
            ),
          ],
        ),
        Positioned(
            left: 13,
            bottom: -30,
            child: BorderedText(
                strokeWidth: 5,
                strokeColor: Colors.white,
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(
                    fontSize: 140,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
      ],
    );
  }
}
