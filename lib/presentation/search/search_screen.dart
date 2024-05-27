import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/applications/search_bloc/search_bloc.dart';
import 'package:news_app/data/constants/debouncer.dart';
import 'package:news_app/data/model/news_model/news_model.dart';
import 'package:news_app/presentation/common_widget/news_items.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key, required this.initialNewss});
  final List<NewsArticles> initialNewss;
  final debouncer = Debouncer(const Duration(milliseconds: 2000));

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) => context.read<SearchBloc>().add(
            const SearchEvent.clearSearch(),
          ),
      child: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              TextField(
                onChanged: (value) {
                  if (value.isEmpty) {
                    debouncer.cancelTimer();
                    context
                        .read<SearchBloc>()
                        .add(const SearchEvent.clearSearch());
                  } else {
                    debouncer.call(() {
                      context
                          .read<SearchBloc>()
                          .add(SearchEvent.searchQueryChanged(value));
                    });
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Search for a movie...',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 14.0),
                  // You can further customize the appearance of the TextField here
                ),
              ),
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state is Initial) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: initialNewss.length,
                        itemBuilder: (context, index) {
                          return NewsItems(
                              url: initialNewss[index].url!,
                              urlImge: initialNewss[index].urlToImage,
                              title: initialNewss[index].title,
                              description: initialNewss[index].description);
                        },
                      ),
                    );
                  } else if (state is Loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is Error) {
                    return const Center(
                      child: Text('some error occurerd'),
                    );
                  } else if (state is Loaded) {
                    return state.results.isEmpty
                        ? const Expanded(
                            child: Center(
                              child: Text('No Search Result Found '),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: state.results.length,
                              itemBuilder: (context, index) {
                                return NewsItems(
                                    url: state.results[index].url!,
                                    urlImge: state.results[index].urlToImage,
                                    title: state.results[index].title,
                                    description:
                                        state.results[index].description);
                              },
                            ),
                          );
                  } else {
                    return const SizedBox();
                  }
                },
              )
            ],
          )),
    );
  }
}
