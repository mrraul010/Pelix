import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pelix/core/colors/colors.dart';
import 'package:pelix/core/colors/constants.dart';
import 'package:pelix/presentation/search/widgets/title.dart';

const imageUrl =
    'https://image.tmdb.org/t/p/original/ta5oblpMlEcIPIS2YGcq9XEkWK2.jpg';

class SearchIdle extends StatelessWidget {
  const SearchIdle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Topsearchtitletext(
          title: 'Top Searches',
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const TopSearchItemTile(),
              separatorBuilder: (ctx, index) => kHeight20,
              itemCount: 10),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.38,
          height: 68,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  imageUrl,
                ),
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Expanded(
          child: Text(
            "MOvie Name",
            style: TextStyle(
              color: kWhite,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          color: Colors.white,
          size: 37,
        ),
      ],
    );
  }
}
