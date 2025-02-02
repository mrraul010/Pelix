import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pelix/application/search/search_bloc.dart';
import 'package:pelix/domain/core/debounce/debounce.dart';
import 'package:pelix/presentation/search/widgets/search_idle.dart';
import 'package:pelix/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<SearchBloc>(context).add(const Initialize());
      },
    );
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
              onChanged: (value) {
                _debouncer.run(() {
                  if (value.isEmpty) {
                    return;
                  }
                  BlocProvider.of<SearchBloc>(context)
                      .add(SearchMovie(MovieQuery: value));
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.searchResults.isEmpty) {
                    return const SearchIdle();
                  } else {
                    return const SearchResultWidget();
                  }
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
