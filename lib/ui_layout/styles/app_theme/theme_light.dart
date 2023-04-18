import 'package:web_view_all_platforms/ui_layout/styles/app_theme/text_style.dart';
import 'package:web_view_all_platforms/ui_layout/styles/color_styles.dart';
import 'package:flutter/material.dart';

///Theme Material Light__________________________________________________________________________________________________________________________________________

//for Light theme
ThemeData _themeLight = ThemeData.light();
ThemeData themeLight = _themeLight.copyWith(
  primaryColor: ColorStyles.blue,
  //будут использоватьчя базовые темы и перезаписаны только те части которые нам необходимы
  // primaryColor: myColorIsActive,
  // cardColor: myColorIsActive,
  // scaffoldBackgroundColor: Color.fromRGBO(245, 248, 255, 1),
  // appBarTheme: AppBarTheme(
  //   titleTextStyle: myTextStyleFontS8Sans(fontSize: 20, context: null),
  //   toolbarHeight: 40,
  //   elevation: 0,
  //   color: Colors.transparent,
  //   iconTheme: IconThemeData(size: 20),
  // ),
  //
  // textButtonTheme: TextButtonThemeData(
  //   style: const ButtonStyle().copyWith(
  //     // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  //
  //     // backgroundColor: MaterialStatePropertyAll(Colors.green),
  //     foregroundColor: MaterialStateProperty.all(myColorIsActive),
  //     textStyle: MaterialStateProperty.all(
  //       myTextStyleFontS8Sans(
  //         fontSize: 18,
  //         context: null,
  //         newFontWeight: FontWeight.w500,
  //       ),
  //     ),
  //     padding:
  //         const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 10)),
  //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
  //       RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(16),
  //       ),
  //     ),
  //
  //     shadowColor: const MaterialStatePropertyAll(myColorIsActive),
  //     overlayColor: MaterialStatePropertyAll(
  //       myColorIsActive.withOpacity(0.1),
  //     ),
  //   ),
  // ),
  //
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: const ButtonStyle().copyWith(
      elevation: MaterialStateProperty.all(0),
      padding: MaterialStateProperty.all(
        const EdgeInsets.fromLTRB(40, 16, 40, 16),
      ),
      backgroundColor: MaterialStatePropertyAll(ColorStyles.blue),

      // foregroundColor: const MaterialStatePropertyAll(_myCardColorLight),
      textStyle: MaterialStateProperty.all(
        myTextStyleFontS8Sans(
          textColor: ColorStyles.white,
          fontSize: 14,
        ),
      ),

      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
    ),
  ),

  textTheme: _textLight(_themeLight.textTheme),
  //_themeLight.textTheme - какую базу будем перезаписывать
);

TextTheme _textLight(TextTheme baseTextThemeLight) {
//base - нащ базовый стиль
  return baseTextThemeLight.copyWith(
    /// h1
    displayLarge: myTextStyleFontS8Sans(
      fontSize: 48,
      newFontFamilyName: SBSansDisplaySemiBold,
    ),

    /// h2
    displayMedium: myTextStyleFontS8Sans(
      fontSize: 32,
      newFontFamilyName: SBSansDisplaySemiBold,
    ),

    /// h3
    displaySmall: myTextStyleFontS8Sans(
      fontSize: 24,
      newFontFamilyName: SBSansDisplaySemiBold,
    ),

    /// h4
    headlineLarge: myTextStyleFontS8Sans(
      fontSize: 18,
      newFontFamilyName: SBSansDisplaySemiBold,
    ),

    /// h5
    headlineMedium: myTextStyleFontS8Sans(
      fontSize: 16,
      newFontFamilyName: SBSansDisplaySemiBold,
    ),

    /// h6
    headlineSmall: myTextStyleFontS8Sans(
      fontSize: 14,
      newFontFamilyName: SBSansDisplaySemiBold,
    ),

    /// b1
    titleLarge: myTextStyleFontS8Sans(
      fontSize: 18,
    ),

    /// b2
    titleMedium: myTextStyleFontS8Sans(
      fontSize: 16,
      newFontWeight: FontWeight.w400,
    ),

    /// b3
    titleSmall: myTextStyleFontS8Sans(
      fontSize: 14,
      newFontWeight: FontWeight.w400,
    ),

    /// b4
    bodyLarge: myTextStyleFontS8Sans(
      fontSize: 12,
      newFontWeight: FontWeight.w400,
    ),

    /// b5
    bodyMedium: myTextStyleFontS8Sans(
      fontSize: 10,
      newFontWeight: FontWeight.w400,
    ),

    /// c1
    bodySmall: myTextStyleFontS8Sans(
      fontSize: 12,
      newFontFamilyName: SBSansDisplaySemiBold,
    ),
  );
}
