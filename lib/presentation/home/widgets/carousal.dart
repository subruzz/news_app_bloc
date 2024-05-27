import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/applications/home_bloc/home_bloc.dart';
import 'package:news_app/presentation/news_view/news_details.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

ValueNotifier<int> indicator = ValueNotifier(0);

class CarousalWidget extends StatelessWidget {
  const CarousalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.fetchNews());
    });
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.when(
            initial: () {
              return const CircularProgressIndicator();
            },
            loading: () {
              return const CircularProgressIndicator();
            },
            data: (breakingNews) => Column(
                  children: [
                    CarouselSlider.builder(
                        itemCount:
                            (breakingNews.length) > 5 ? 5 : breakingNews.length,
                        itemBuilder: (context, index, realIndex) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NewsViewPage(
                                        url: breakingNews[index].url!),
                                  ));
                            },
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return const Icon(Icons.wifi);
                                      },
                                      breakingNews[index].urlToImage != null
                                          ? breakingNews[index].urlToImage!
                                          : 'https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg',
                                      fit: BoxFit.cover,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3, // Adjust height as needed
                                    )),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  color: Colors.black26,
                                  child: Text(
                                    breakingNews[index].title ?? '',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height * .3,
                          aspectRatio: 16 / 5,
                          viewportFraction: 0.8,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 6),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          onPageChanged: (index, reason) {
                            indicator.value = index;
                          },
                          scrollDirection: Axis.horizontal,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ValueListenableBuilder(
                      valueListenable: indicator,
                      builder: (context, value, child) =>
                          AnimatedSmoothIndicator(
                              activeIndex: indicator.value, count: 5),
                    ),
                  ],
                ),
            error: () {
              return const Center(
                child: Text('Unexpected Error Occured'),
              );
            });
      },
    );
  }
}
