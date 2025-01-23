import 'package:flutter/material.dart';
import 'package:pelix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
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
    );
  }
}
