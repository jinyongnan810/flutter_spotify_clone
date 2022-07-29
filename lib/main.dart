import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Spotify UI',
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
          scaffoldBackgroundColor: const Color(0xFF121212),
          backgroundColor: const Color(0xFF121212),
          primaryColor: Colors.black,
          iconTheme: const IconThemeData().copyWith(color: Colors.white),
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: TextTheme(
            headline2: const TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
            headline4: TextStyle(
              fontSize: 12.0,
              color: Colors.grey[300],
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0,
            ),
            bodyText1: TextStyle(
              color: Colors.grey[300],
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
            ),
            bodyText2: TextStyle(
              color: Colors.grey[300],
              letterSpacing: 1.0,
            ),
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: const Color(
                0xFF1DB954,
              ),
              brightness: Brightness.dark),
        ),
        home: const Scaffold(
          body: Center(child: Text('spotify')),
        ));
  }
}
