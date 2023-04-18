import 'package:web_view_all_platforms/ui_layout/styles/color_styles.dart';
import 'package:flutter/material.dart';

class MyCircularProgressIndicator extends StatelessWidget {
  const MyCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      strokeWidth: 2,
      color: ColorStyles.blue,
    ));
  }
}
