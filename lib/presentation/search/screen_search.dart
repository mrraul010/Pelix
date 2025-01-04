import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pelix/presentation/search/widgets/search_idle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: SearchIdle()),
          ],
        ),
      )),
    );
  }
}
