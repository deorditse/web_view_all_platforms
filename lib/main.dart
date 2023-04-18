import 'package:web_view_all_platforms/ui_layout/pages/chat_gpt_page/chat_gpt_page.dart';
import 'package:web_view_all_platforms/ui_layout/pages/pay_page/pay_page.dart';
import 'package:web_view_all_platforms/ui_layout/styles/app_theme/theme_light.dart';
import 'package:web_view_all_platforms/ui_layout/styles/color_styles.dart';
import 'package:web_view_all_platforms/ui_layout/widgets_for_all_pages/my_bottom_snackbar.dart';
import 'package:web_view_all_platforms/ui_layout/widgets_for_all_pages/my_circular_progress_indicator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:url_launcher/url_launcher.dart';
import 'business_layout/blocs/pay_bloc/pay_bloc.dart';

/// как веб сервер flutter run -d web-server
// flutter build web --web-renderer canvaskit

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeLight,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: ColorStyles.blue,
          actions: const [
            Center(
                child: Text(
                  "v.1.1.2  ",
                  textAlign: TextAlign.center,
                ))
          ],
          leading: GestureDetector(
            onTap: () async {
              final uri = Uri.parse(
                  "https://sites.google.com/view/gptbydeor/%D0%B3%D0%BB%D0%B0%D0%B2%D0%BD%D0%B0%D1%8F-%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B0?authuser=0");

              if (await canLaunchUrl(uri)) {
                await launchUrl(
                  uri,
                  webOnlyWindowName: '_blank',
                );
              } else {
                throw 'Could not launch ${uri.path}';
              }
            },
            child: const FittedBox(
              child: Row(
                children: [
                  Icon(Icons.web),
                  Center(
                      child: Text(
                        "На сайт",
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
          ),
          title: const Center(
              child: Text(
                "Chat GPT",
                textAlign: TextAlign.center,
              )),
        ),
        body: _RootWidget(),
      ),
    );
  }
}

class _RootWidget extends StatelessWidget {
  _RootWidget({Key? key}) : super(key: key);

  final PayBloc bloc = PayBloc()..add(const PayEvent.initial());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: BlocConsumer<PayBloc, PayState>(
        bloc: bloc,
        listener: (context, state) {
          state.whenOrNull(
            verificationFailed: (failMessage) {
              if (failMessage != null) {
                ///прослушиваем ошибку по verificationFailed
                myBottomSnackBar(context, content: failMessage);
              }
            },
          );
        },
        builder: (context, state) {
          return Center(
            child: state.when(
              loading: () {
                FlutterNativeSplash.remove();
                return const MyCircularProgressIndicator();
              },
              verificationSuccessful: () => const ChatGptMainPage(),
              verificationFailed: (_) => const Padding(
                padding: EdgeInsets.all(8.0),
                child: PayPage(),
              ),
            ),
          );
        },
      ),
    );
  }
}
