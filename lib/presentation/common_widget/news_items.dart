
import 'package:flutter/material.dart';
import 'package:news_app/presentation/news_view/news_details.dart';

class NewsItems extends StatelessWidget {
  const NewsItems({
    super.key,
    required this.url,
    required this.urlImge,
    required this.title,
    required this.description,
  });
  final String url;
  final String? urlImge;
  final String? title;
  final String? description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewsViewPage(
                url: url,
              ),
            )),
        child: Material(
          elevation: 3,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.wifi);
                    },
                    urlImge != null
                        ? urlImge!
                        : 'https://t3.ftcdn.net/jpg/03/27/55/60/360_F_327556002_99c7QmZmwocLwF7ywQ68ChZaBry1DbtD.jpg',
                    fit: BoxFit.cover,
                    height: 100,
                    width: 150, // Adjust height as needed
                  )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      title ?? '',
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      description ?? '',
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
