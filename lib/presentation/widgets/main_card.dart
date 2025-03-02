import 'package:flutter/material.dart';
import 'package:pelix/core/constants.dart';

class MainCard extends StatelessWidget {
  final String imageUrl;
  MainCard({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadius20,
          image: DecorationImage(
              image: NetworkImage(
            imageUrl,
          ))),
    );
  }
}
