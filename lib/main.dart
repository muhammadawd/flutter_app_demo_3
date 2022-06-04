import 'package:flutter/material.dart';
import 'package:fullter_app_3/constants/colors.dart';
import 'package:fullter_app_3/screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(InitApp());
}

class InitApp extends StatelessWidget {
  InitApp({Key? key}) : super(key: key);
  final ThemeData theme = ThemeData(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    textTheme: GoogleFonts.montserratTextTheme(),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App',
      theme: theme.copyWith(
        appBarTheme: AppBarTheme(backgroundColor: KPrimaryColor),
        scaffoldBackgroundColor: KSecondaryAltColor,
        primaryColor: KWhiteColor,
        colorScheme: theme.colorScheme.copyWith(secondary: KSecondaryColor),
        iconTheme: IconThemeData(color: KWhiteColor),
      ),
      home:HomeScreen(),
    );
  }
}
