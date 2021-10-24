import 'package:flutter/material.dart';
import 'package:flutter_reference/components/app_bars.dart';
import 'package:flutter_reference/components/banners.dart';
import 'package:flutter_reference/components/bottom_navigation.dart';
import 'package:flutter_reference/components/buttons.dart';
import 'package:flutter_reference/components/cards.dart';
import 'package:flutter_reference/components/checkboxes.dart';
import 'package:flutter_reference/components/chips.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Reference',
      theme: _buildShrineTheme(),
      debugShowCheckedModeBanner: false,
      home: const ChipsWidgetScreen(),
    );
  }
}


//https://material.io/design/color/applying-color-to-ui.html#usage

// Crane - this is very good
// https://material.io/design/material-studies/crane.html#color

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    textTheme: _buildShrineTextTheme(base.textTheme),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        button: base.button!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: shrineBrown900,
        bodyColor: shrineBrown900,
      );
}

const TextStyle buttonTextStyleActive = TextStyle(color: Color(0xFF6200EE), fontWeight: FontWeight.bold);

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: shrinePink100,
  primaryVariant: shrineBrown900,
  secondary: shrinePink50,
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrineBackgroundWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFF7A8790);
const Color shrinePink300 = Color(0xFF5D686F);
const Color shrinePink400 = Color(0xFF41494E);

const Color shrineBrown900 = Color(0xFF42242D);
const Color shrineBrown600 = Color(0xFF915063);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
