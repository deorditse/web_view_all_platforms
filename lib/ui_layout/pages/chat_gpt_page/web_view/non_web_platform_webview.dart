import 'package:chat_gpt/ui_layout/utils/app_platform.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

Widget webView(
    {required String link, required WebViewController? webViewController}) {
  print('ссылка на webView $link');
  return AppPlatform.isMobile
      ? WebViewWidget(controller: webViewController!)
      : HyperLink(link: link);
}

//чтобы открывать окно по гиперссылке в новом окне
class HyperLink extends StatelessWidget {
  HyperLink({required this.link, Key? key}) : super(key: key);
  String link;
  late final Uri _url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Text(
          link,
          style: const TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.blue,
          ),
        ),
      ),
      onTap: () async {
        // await _urlLoad();
        _url = await Uri.parse(link);
        launchUrl(_url);
      },
    );
  }
}
