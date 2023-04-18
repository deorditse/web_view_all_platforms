import 'package:web_view_all_platforms/ui_layout/pages/pay_page/widgets/form_text_fields.dart';
import 'package:web_view_all_platforms/ui_layout/styles/app_theme/text_style.dart';
import 'package:web_view_all_platforms/ui_layout/styles/color_styles.dart';
import 'package:web_view_all_platforms/ui_layout/styles/const_app.dart';
import 'package:web_view_all_platforms/ui_layout/widgets_for_all_pages/my_bottom_snackbar.dart';
import 'package:web_view_all_platforms/ui_layout/widgets_for_all_pages/my_container.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'widgets/payment_methods_widget.dart';

class PayPage extends StatelessWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          myHeightBetweenContainer,
          myHeightBetweenContainer,
          myHeightBetweenContainer,
          myHeightBetweenContainer,
          const MyContainer(child: FormTextFields()),
          myHeightBetweenContainer,
          myHeightBetweenContainer,
          myHeightBetweenContainer,
          myHeightBetweenContainer,
          Text(
            'Как начать пользоваться Chat GPT?',
            style: myTextStyleFontS8Sans(fontSize: 25),
          ),
          myHeightBetweenContainer,
          myHeightBetweenContainer,
          Text(
            '1. Спонсируйте проект на любую сумму',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.black,
                ),
          ),
          myHeightBetweenContainer,
          QrCodeWidget(),
          myHeightBetweenContainer,
          myHeightBetweenContainer,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "2. Отправьте чек об оплате в телеграм ",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy("@deor_d");
                      myBottomSnackBar(context, content: "Текст скопирован");
                    },
                    child: Text(
                      "@deor_d",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: ColorStyles.blue,
                          ),
                    ),
                  ),
                ],
              ),

              Text(
                " (в ответное сообщение придет код верификации с бесконеным сроком пользования)",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                    ),
              ),
            ],
          ),
          myHeightBetweenContainer,
          myHeightBetweenContainer,
          myHeightBetweenContainer,
          myHeightBetweenContainer,
          myHeightBetweenContainer,
          myHeightBetweenContainer,
        ],
      ),
    );
  }
}
