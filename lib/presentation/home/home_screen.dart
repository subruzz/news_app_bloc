import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/applications/trending_bloc/trending_bloc.dart';
import 'package:news_app/presentation/category/category_screen.dart';

import 'package:news_app/presentation/home/widgets/carousal.dart';
import 'package:news_app/presentation/home/widgets/trending_news.dart';
import 'package:news_app/presentation/search/search_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Map<String, String> _categories = {
    'General': 'assets/images/general.jpg',
    'Business': 'assets/images/business.jpeg',
    'Health': 'assets/images/health.jpg',
    'Sports': 'assets/images/sports.jpeg',
    'Entertainment': 'assets/images/entertainment.jpeg',
  };
  int activeIndictor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(
                          initialNewss:
                              context.read<TrendingBloc>().state.trendingNews),
                    ));
              },
              icon: const Icon(Icons.search_rounded))
        ],
        centerTitle: true,
        title: const Text.rich(
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          TextSpan(text: 'Flutter', children: <InlineSpan>[
            TextSpan(
              text: 'News',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 10, right: 7),
                scrollDirection: Axis.horizontal,
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  final categoryName = _categories.keys.elementAt(index);
                  final image = _categories.values.elementAt(index);
                  return CategoryTile(categoryName: categoryName, image: image);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Breaking News',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
            const CarousalWidget(),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending News',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
            const TrendingNews(),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String categoryName;
  final String image;

  // ignore: use_super_parameters
  const CategoryTile({
    Key? key,
    required this.categoryName,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryBasedNews(category: categoryName),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                image,
                width: 130,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 130,
              height: double.infinity,
              decoration: BoxDecoration(
                color:
                    Colors.black.withOpacity(0.3), // Adjust opacity as needed
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            Center(
              child: Text(
                categoryName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
