import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/applications/trending_bloc/trending_bloc.dart';
import 'package:news_app/presentation/common_widget/news_items.dart';
import 'package:news_app/presentation/news_view/news_details.dart';

class TrendingNews extends StatelessWidget {
  const TrendingNews({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TrendingBloc>().add(const TrendingEvent.fetchTrendingNews());
    });
    return BlocBuilder<TrendingBloc, TrendingState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.hasError) {
          return const Center(
            child: Text('Unexpected Error Occured'),
          );
        }
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.trendingNews.length,
          itemBuilder: (context, index) {
            return NewsItems(
                url: state.trendingNews[index].url!,
                urlImge: state.trendingNews[index].urlToImage,
                title: state.trendingNews[index].title,
                description: state.trendingNews[index].description);
          },
        );
      },
    );
  }
}
