import 'package:flutter/material.dart';
import 'package:flutter_codeyad_techblog/common/consts/application_const.dart';
import 'package:flutter_codeyad_techblog/main_screen.dart';
import 'package:flutter_codeyad_techblog/modules/home/home_page.dart';
import 'package:flutter_codeyad_techblog/modules/widgets/splash_screen_page.dart';
import 'package:flutter_codeyad_techblog/modules/user/user_profile_page.dart';
import 'package:flutter_codeyad_techblog/modules/user/user_register_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa', ''), // Farsi
      ],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'iranSans',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'iranSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'iranSans',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: TextStyle(
            fontFamily: 'iranSans',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'iranSans',
            fontSize: 13,
          ),
        ),
      ),
      home: MainScreen(),
    );
  }
}
