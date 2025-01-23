import 'package:flutter/material.dart';
import 'package:pelix/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadius20,
          image: const DecorationImage(
              image: NetworkImage(
                  'https://image.tmdb.org/t/p/original/izFuiu8xwuxurbrdJKSP945odBM.jpg'))),
    );
  }
}
