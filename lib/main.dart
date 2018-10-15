import 'package:flutter/material.dart';
import 'package:cryptonews_mobile/ui/converter/converter_page.dart';
import 'package:cryptonews_mobile/ui/news/news_page.dart';


void main() => runApp(new CryptoNewsApp());

class CryptoNewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Crypto News App',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primaryColor: new Color(0xFF323639),
        primaryColorDark: new Color(0xFF282b2e),
        canvasColor: new Color(0xFF323639),
        accentColor: new Color(0xFF41464a),
      ),
      routes: {
        '/': (context) => NewsPage(),
        '/converter': (context) => ConverterPage()
      }
    );
  }
}
