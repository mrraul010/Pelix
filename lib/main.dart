import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pelix/core/colors/colors.dart';
import 'package:pelix/presentation/mainpage/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pelix',
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(surface: backgroundColor),
      ),
      debugShowCheckedModeBanner: false,
      home: ScreenMainPage(),
    );
  }
}
