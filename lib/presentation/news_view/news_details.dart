import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsViewPage extends StatelessWidget {
  const NewsViewPage({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: url,
        ));
  }
}
