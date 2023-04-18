import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:chat_gpt/ui_layout/pages/chat_gpt_page/web_view/mock_web_view.dart'
    if (dart.library.io) 'package:chat_gpt/ui_layout/pages/chat_gpt_page/web_view/non_web_platform_webview.dart' //приложение запущено на mobile
    if (dart.library.html) 'package:chat_gpt/ui_layout/pages/chat_gpt_page/web_view/web_platform_webview.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChatGptMainPage extends StatefulWidget {
  const ChatGptMainPage({Key? key}) : super(key: key);

  @override
  State<ChatGptMainPage> createState() => _ChatGptMainPageState();
}

class _ChatGptMainPageState extends State<ChatGptMainPage> {
  WebViewController? _controller;

  final path = "https://cifirica.site/";

  final Rx<double> _progressVal = (0.0).obs;

  @override
  void initState() {
    super.initState();

    if (!kIsWeb) {
      //если не веб то инициирую контроллер
      _controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              _progressVal.value = progress.toDouble() / 100;
            },
            onPageStarted: (String url) {},
            onPageFinished: (String url) {},
            onWebResourceError: (WebResourceError error) {},
          ),
        )
        ..loadRequest(Uri.parse(path));
    } else {
      _progressVal.value != 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    print('new build');
    return Column(
      children: [
        Obx(
          () => _progressVal.value != 1
              ? LinearProgressIndicator(
            minHeight: 4,
                  value: _progressVal.value,
                  color: Colors.red,
                )
              : SizedBox.shrink(),
        ),
        Expanded(
          child: webView(
            link: path,
            webViewController: _controller,
          ),
        ),
      ],
    );
  }
}
