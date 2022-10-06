import 'package:egoapp1/src/BasePage.dart';
import 'package:flutter/material.dart';

const Color kAccentColor = Color.fromARGB(255, 141, 100, 254);
const Color kBackgroundColor = Color(0xFF19283D);
const Color kTextColorPrimary = Color(0xFFECEFF1);
const Color kTextColorSecondary = Color(0xFFB0BEC5);
const Color kButtonColorPrimary = Color(0xFFECEFF1);
const Color kButtonTextColorPrimary = Color(0xFF455A64);
const Color kIconColor = Color(0xFF455A64);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
      ),
      home: const BasePage(),
    );
  }
}
