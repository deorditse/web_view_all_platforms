import 'package:flutter/material.dart';

const String SBSansDisplayRegular = "SBSansDisplayRegular";
const String SBSansDisplaySemiBold = "SBSansDisplaySemiBold";
const String SBSansDisplayBold = "SBSansDisplayBold";

TextStyle myTextStyleFontS8Sans({
  double? fontSize,
  Color? textColor,
  FontWeight? newFontWeight,
  String? newFontFamilyName,
}) =>
    TextStyle(
      color: textColor ?? const Color(0xFF2C2E33),
      fontFamily: newFontFamilyName ?? SBSansDisplayRegular,
      fontSize: fontSize ?? 12,
      fontWeight: newFontWeight ?? FontWeight.w600,
      fontStyle: FontStyle.normal,
      // overflow: TextOverflow.ellipsis,
    );
