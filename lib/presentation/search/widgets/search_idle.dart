import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelix/application/search/search_bloc.dart';
import 'package:pelix/core/colors.dart';

import 'package:pelix/core/constants.dart';
import 'package:pelix/presentation/search/widgets/title.dart';

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
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: kButtonColorOrange,
                  ),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error while loading data'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('List is Empty'),
                );
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    final movie = state.idleList[index];
                    return TopSearchItemTile(
                        title: movie.title ?? 'No title Provided 😒',
                        imagoUrl: '$imageAppendUrl${movie.posterPath}');
                  },
                  separatorBuilder: (ctx, index) => kHeight20,
                  itemCount: state.idleList.length);
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String imagoUrl;
  const TopSearchItemTile(
      {super.key, required this.title, required this.imagoUrl});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.38,
          height: 68,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imagoUrl), fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
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
