import 'package:flutter/material.dart';

ScaffoldMessengerState myBottomSnackBar(BuildContext context,
        {required String content, Duration? duration}) =>
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(content),
          duration: duration ?? const Duration(seconds: 2),
        ),
      );
