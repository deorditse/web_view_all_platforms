import 'dart:html';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

//чтобы открывать в этом же окне webview браузера
Widget webView(
    {required String link, required WebViewController? webViewController}) {
  return WebPlatformWebView(link: link);
}

class WebPlatformWebView extends StatelessWidget {
  final String link;

  const WebPlatformWebView({required this.link, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = Random().nextInt.toString();

    ui.platformViewRegistry //в анализаторе можно отключить кросовку
        .registerViewFactory(id, (int viewId) => IFrameElement()..src = link);

    return HtmlElementView(viewType: id);
  }
}
