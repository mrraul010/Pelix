import 'package:flutter/material.dart';

class Topsearchtitletext extends StatelessWidget {
  final String title;
  const Topsearchtitletext({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
