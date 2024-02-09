import 'package:bluetooth_app/welcome.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final _defaultDarkColorScheme = ColorScheme.fromSwatch(
      primarySwatch: Colors.deepPurple, brightness: Brightness.dark);
  static final _defaultLightColorScheme =
      ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple);

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (lightColorScheme, darkColorScheme) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: lightColorScheme ?? _defaultLightColorScheme,
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          colorScheme: darkColorScheme ?? _defaultDarkColorScheme,
          useMaterial3: true,
        ),
        themeMode: ThemeMode.system,
        home: const WelcomeScreen(),
      );
    });
  }
}


//https://www.youtube.com/watch?v=bu_s2sviuck
//Onboarding page tutorial