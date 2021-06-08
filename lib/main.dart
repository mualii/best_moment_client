import 'package:best_moment_client/screens/search_result_screen/filttering_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.scheherazadeTextTheme(
          Theme.of(context).textTheme.copyWith(
                headline6: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFFA9B2D2),
                ),
                headline4: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFFA9B2D2),
                ),
              ),
        ),
        hintColor: Color(0xFFE0E3EC),
        primaryColor: Colors.white,
        //Color(0xFFFD8C44)
        accentColor: Color(0xFFFFFFFF),
        focusColor: Color(0xFF8C98A8),
        unselectedWidgetColor: Color(0xff2FB3CA),
        backgroundColor: Color(0xFF494861),
        canvasColor: Colors.white,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FiltterScreen(),
    );
  }
}
