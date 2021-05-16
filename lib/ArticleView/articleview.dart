import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Articleview extends StatefulWidget {
  final String ArticleUrl;
  Articleview({this.ArticleUrl});

  @override
  _ArticleviewState createState() => _ArticleviewState();
}

class _ArticleviewState extends State<Articleview> {
  final Completer<WebViewController> completer = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Explorer",
                  style: TextStyle(color: Colors.black, fontSize: 25.0),
                ),
                Text(
                  "Daily",
                  style: TextStyle(color: Colors.red, fontSize: 25.0),
                ),
              ]),
          actions: <Widget>[
            Opacity(
              opacity: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Icon(Icons.save),
              ),
            )
          ],
        ),
        body: Container(
            child: WebView(
          initialUrl: widget.ArticleUrl,
          onWebViewCreated: ((WebViewController webViewController) {
            completer.complete(webViewController);
          }),
        )));
  }
}
