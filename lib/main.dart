import 'package:flutter/material.dart';
import 'package:cryptonews_mobile/ui/main_page.dart';

void main() => runApp(new CryptoNewsApp());

class CryptoNewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Crypto News App',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primaryColor: new Color(0xFF323639),
        canvasColor: new Color(0xFF323639),
        accentColor: new Color(0xFF41464a),
      ),
      home: new MainPage(),
    );
  }
}
