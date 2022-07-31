import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/screens/root_screen.dart';
import 'package:window_size/window_size.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // not working on
  if (!kIsWeb && (Platform.isMacOS || Platform.isLinux)) {
    await DesktopWindow.setMinWindowSize(const Size(600, 800));
  }
  if (Platform.isWindows) {
    setWindowMinSize(const Size(600, 800));
  }
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
            scrollbarTheme: ScrollbarThemeData(
              thumbColor: MaterialStateProperty.all<Color>(Colors.white30),
            )),
        home: const Scaffold(
          body: RootScreen(),
        ));
  }
}
