import 'package:web_view_all_platforms/business_layout/blocs/pay_bloc/pay_bloc.dart';
import 'package:web_view_all_platforms/ui_layout/styles/color_styles.dart';
import 'package:web_view_all_platforms/ui_layout/styles/text_field_style.dart';
import 'package:web_view_all_platforms/ui_layout/widgets_for_all_pages/my_bottom_snackbar.dart';
import 'package:web_view_all_platforms/ui_layout/widgets_for_all_pages/my_button.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormTextFields extends StatefulWidget {
  const FormTextFields({Key? key}) : super(key: key);

  @override
  State<FormTextFields> createState() => _FormTextFieldsState();
}

class _FormTextFieldsState extends State<FormTextFields> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _codeVerify = TextEditingController();

  void _handleSubmit(
      {required String codeVerify, required BuildContext context}) async {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<PayBloc>(context).add(
        PayEvent.paymentVerification(codeVerification: codeVerify),
      );

      _codeVerify.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Введите код, отправленный от ",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    FlutterClipboard.copy("@deor_d");
                    myBottomSnackBar(context, content: "Текст скопирован");
                  },
                  child: Text(
                    "@deor_d",
                    style:
                        Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: ColorStyles.blue,
                            ),
                  ),
                ),
                Text(
                  ' из telegram',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 12),
            TextFormField(
              key: Key('codeVerify'),
              controller: _codeVerify,
              autofocus: false,
              //for testing
              decoration: myStyleTextField(
                context,
                // labelText: 'Имя...',
                hintText: "Код...",
              ),
              keyboardType: TextInputType.text,
              // obscuringCharacter: '*',
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.singleLineFormatter
              ],
              validator: (value) {
                if (value == '') return 'Введите код верификации';
                return null;
              },
            ),
            const SizedBox(height: 30),
            MyButton(
              onPressed: () {
                _handleSubmit(context: context, codeVerify: _codeVerify.text);
              },
              child: Center(
                child: Text(
                  'Перейти в CHAT GPT',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            MyButton(
              onPressed: () {
                BlocProvider.of<PayBloc>(context)
                    .add(const PayEvent.tryForFree());
              },
              backgroundColor: Colors.transparent,
              child: Center(
                child: Text(
                  'Попробовать бесплатно (3 минуты)',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: ColorStyles.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
