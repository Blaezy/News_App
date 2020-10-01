import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebArticeView extends StatefulWidget {
  final String articleUrl;
  WebArticeView(this.articleUrl);
  @override
  _WebArticeViewState createState() => _WebArticeViewState();
}

class _WebArticeViewState extends State<WebArticeView> {
  @override
  Widget build(BuildContext context) {
    // print(widget.articleUrl);
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Flutter'),
              Text(
                'News',
                style: TextStyle(color: Colors.blue),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        body: WebviewScaffold(
          url: widget.articleUrl,
          withZoom: true,
        ));
  }
}
