
import 'package:web_view_all_platforms/ui_layout/styles/color_styles.dart';
import 'package:flutter/material.dart';

InputDecoration myStyleTextField(
  BuildContext context, {
  String? labelText,
  String? hintText,
  String? helperText,
}) {
  OutlineInputBorder myOutlineInputBorder({Color? color}) => OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        gapPadding: 0,
        borderSide: BorderSide(
            color: color ?? Colors.transparent, width: color != null ? 1 : 0),
      );

  return InputDecoration(
    contentPadding: const EdgeInsets.fromLTRB(24, 16, 12, 16),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(24)),
      borderSide: BorderSide.none,
    ),
    // isDense: true,
    //уменьшает высоту до минимальной

    enabledBorder: myOutlineInputBorder(color: ColorStyles.blue),

    focusedBorder: myOutlineInputBorder(color: ColorStyles.blue),

    errorBorder: myOutlineInputBorder(color: Colors.red),

    focusedErrorBorder: myOutlineInputBorder(color: Colors.red),

    errorStyle: TextStyle().copyWith(
      color: Colors.red,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),

    hintStyle: TextStyle().copyWith(
      color: ColorStyles.grafitLight,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),

    labelStyle: TextStyle().copyWith(
      color: ColorStyles.grafitLight,
      fontSize: 0,
      fontWeight: FontWeight.w400,
    ),

    floatingLabelStyle: const TextStyle(fontSize: 0),

    labelText: labelText,
    //'Введите ключ команды',
    helperText: helperText,
    //'Поле для поиска заметок',
    hintText: hintText,
    //'123456',
    fillColor: const Color(0xFFF7F7F8),
    filled: true,
  );
}
