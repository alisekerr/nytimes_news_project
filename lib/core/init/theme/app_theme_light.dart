import 'package:flutter/material.dart';

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
      iconTheme: _buildIconTheme);

  ColorScheme get _buildColorScheme => ColorScheme(
        brightness: Brightness.light,
        primary: Colors.blue.shade900,
        onPrimary: Colors.blue,
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

ListTileThemeData get _buildListTileTheme => ListTileThemeData(
    subtitleTextStyle: _buildTextTheme.titleSmall,
    visualDensity: VisualDensity.compact,
    titleTextStyle: _buildTextTheme.titleMedium);

TextTheme get _buildTextTheme => const TextTheme(
    titleLarge: TextStyle(color: Colors.white, fontSize: 18),
    titleMedium: TextStyle(color: Color(0xff2A2A2A), fontSize: 13),
    titleSmall: TextStyle(color: Color(0xff818181), fontSize: 12));

AppBarTheme get _buildAppbarTheme => AppBarTheme(
      backgroundColor: Colors.greenAccent,
      centerTitle: false,
      iconTheme: _buildIconTheme,
      actionsIconTheme: _buildIconTheme,
    );
IconThemeData get _buildIconTheme => const IconThemeData(
      color: Colors.white,
    );
