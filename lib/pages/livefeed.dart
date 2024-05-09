import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';

class LiveFeedPage extends StatefulWidget {
  const LiveFeedPage({super.key});

  @override
  State<LiveFeedPage> createState() => _LiveFeedPageState();
}

class _LiveFeedPageState extends State<LiveFeedPage> {

  // late final WebViewController controller;
  // @override
  // void initState() {
  //   super.initState();
  //   controller = WebViewController()
  //     ..loadRequest(
  //       Uri.parse('http://192.168.213.1/html/'),
  //     );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Live Feed"),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: double.infinity,
            height: 500,
            // child: WebView(
            //   initialUrl: 'http://192.168.213.1/html/',
            //   javascriptMode:JavascriptMode.unrestricted,
            //   zoomEnabled: true,
            // ),
            child: Placeholder(),
            //child: WebViewWidget(controller: controller),
          ),
        ],
      )
    );
  }
}
