import 'package:flutter/material.dart';
import 'package:flutter_minesweeper/screens/campo_minado_app.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        backgroundColor: Colors.grey,
        seconds: 2,
        navigateAfterSeconds: CampoMinadoApp(),
        loaderColor: Colors.green,
        photoSize: 45,
        title: Text(
          'Minesweeper',
          style: TextStyle(fontSize: 60, color: Colors.green),
        ),
      ),
    );
  }
}
