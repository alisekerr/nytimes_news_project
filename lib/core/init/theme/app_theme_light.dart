import 'package:flutter/material.dart';
import 'package:nytimes_news_project/core/constants/color/color_constants.dart';

import 'app_theme.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData.light().copyWith(
      colorScheme: _buildColorScheme,
      appBarTheme: _buildAppbarTheme,
      scaffoldBackgroundColor: _buildBackgroundColor(),
      textTheme: _buildTextTheme,
      listTileTheme: _buildListTileTheme,
      progressIndicatorTheme: _buidProgressIndicatorThemeData,
      elevatedButtonTheme: _buildElevatedButtonTheme,
      iconTheme: _buildIconTheme);

  ColorScheme get _buildColorScheme => const ColorScheme(
        brightness: Brightness.light,
        primary: Colors.white,
        onPrimary: Colors.white,
        secondary: Colors.black,
        onSecondary: Colors.black45,
        error: Colors.red,
        onError: Colors.orange,
        background: Colors.white,
        onBackground: Colors.white54,
        surface: Colors.yellow,
        onSurface: Colors.pink,
      );
  Color _buildBackgroundColor() {
    return const Color(0xFAFAFAFA);
  }
}

ProgressIndicatorThemeData get _buidProgressIndicatorThemeData =>
    ProgressIndicatorThemeData(color: ColorConstants.lightGreenColor);

ElevatedButtonThemeData get _buildElevatedButtonTheme =>
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          backgroundColor: ColorConstants.lightGreenColor),
    );
ListTileThemeData get _buildListTileTheme => ListTileThemeData(
    subtitleTextStyle: _buildTextTheme.titleSmall,
    visualDensity: VisualDensity.compact,
    titleTextStyle: _buildTextTheme.titleMedium);

TextTheme get _buildTextTheme => TextTheme(
    bodySmall: TextStyle(color: ColorConstants.darkGrayColor, fontSize: 15),
    bodyMedium: TextStyle(color: ColorConstants.blackColor, fontSize: 18),
    titleLarge: TextStyle(color: ColorConstants.whiteColor, fontSize: 18),
    titleMedium:
        TextStyle(color: ColorConstants.semiMediumBlackColor, fontSize: 13),
    titleSmall: TextStyle(color: ColorConstants.mediumGrayColor, fontSize: 12));

AppBarTheme get _buildAppbarTheme => AppBarTheme(
      backgroundColor: ColorConstants.lightGreenColor,
      centerTitle: false,
      iconTheme: _buildIconTheme,
      actionsIconTheme: _buildIconTheme,
    );
IconThemeData get _buildIconTheme => const IconThemeData(
      color: Colors.white,
    );
