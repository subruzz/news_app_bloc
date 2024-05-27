import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/applications/category_bloc/category_bloc.dart';
import 'package:news_app/presentation/news_view/news_details.dart';

class CategoryBasedNews extends StatelessWidget {
  const CategoryBasedNews({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    context
        .read<CategoryBloc>()
        .add(CategoryEvent.startFetching(query: category));
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: Text.rich(
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          TextSpan(text: category, children: const <InlineSpan>[
            TextSpan(
              text: ' News',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )
          ]),
        ),
      ),
      body: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.hasError) {
            return const Center(
              child: Text('unexpected error'),
            );
          } else {
            return ListView.builder(
              itemCount: state.categoryBasedNews.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsViewPage(
                              url: state.categoryBasedNews[index].url!),
                        )),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          CachedNetworkImage(
                            imageUrl: state
                                        .categoryBasedNews[index].urlToImage !=
                                    null
                                ? state.categoryBasedNews[index].urlToImage!
                                : 'https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg',
                            errorWidget: (context, error, stackTrace) {
                              return const Icon(Icons.wifi);
                            },

                            fit: BoxFit.cover,
                            // Adjust height as needed
                          ),
                          Text(
                            state.categoryBasedNews[index].title ?? '',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            state.categoryBasedNews[index].description ?? '',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
