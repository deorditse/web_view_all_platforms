import 'package:web_view_all_platforms/ui_layout/styles/const_app.dart';
import 'package:web_view_all_platforms/ui_layout/widgets_for_all_pages/my_button.dart';
import 'package:web_view_all_platforms/ui_layout/widgets_for_all_pages/my_container.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class QrCodeWidget extends StatelessWidget {
  const QrCodeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyContainer(
          width: 300,
          height: 300,
          useSingleChildScroll: false,
          child: Column(
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),

                  child: Image.asset(
                    "assets/images/qr_pay_1.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              myHeightBetweenContainer,
              Text("По QR-code"),
            ],
          ),
        ),
        myHeightBetweenContainer,
        MyButton(
          // backgroundColor: Colors.yellow,
          onPressed: () async {
            final uri = Uri.parse(
                "https://www.tinkoff.ru/rm/deorditse.dmitriy1/tbWz293376");

            if (await canLaunchUrl(uri)) {
              await launchUrl(
                uri,
                webOnlyWindowName: '_blank',
              );
            } else {
              throw 'Could not launch ${uri.path}';
            }
          },
          child: Text("Оплатить по касанию"),
        ),
      ],
    );
  }
}
