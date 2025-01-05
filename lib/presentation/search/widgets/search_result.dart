import 'package:flutter/material.dart';
import 'package:pelix/core/colors/constants.dart';
import 'package:pelix/presentation/search/widgets/title.dart';

const imageurl =
    'https://image.tmdb.org/t/p/w600_and_h900_bestv2/zorlLz9vGTMilsJMr8XqeaxKZ08.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Topsearchtitletext(title: 'Movies and TV'),
        kHeight,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisSpacing: 9,
          mainAxisSpacing: 9,
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.7,
          children: List.generate(20, (index) {
            return const MainCard();
          }),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(imageurl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
