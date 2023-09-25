import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage({super.key, required this.theThing});

  final String theThing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cload',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: WebViewWidget(
        controller: getWebView(url: theThing),
      ),
    );
  }
}

WebViewController getWebView({required String url}) {
  WebViewController controller = WebViewController()
    ..loadRequest(Uri.parse(url));
  return controller;
}



// WebViewController urlFunction({required String link}) {
//   final controller = WebViewController()
//     ..setJavaScriptMode(JavaScriptMode.unrestricted)
//     ..loadRequest(Uri.parse(link));

//   return controller;
// }
// WebViewController getWebView() {
//   WebViewController controller = WebViewController()
//     ..loadRequest(Uri.parse(''));
//   return controller;
// }



// AppBar(
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         title: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               'News',
//               style: TextStyle(color: Colors.black),
//             ),
//             Text(
//               'Cload',
//               style: TextStyle(color: Colors.orange),
//             ),
//           ],
//         ),
//       ),