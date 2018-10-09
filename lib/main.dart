import 'package:flutter/material.dart';
import 'package:cryptonews_mobile/ui/main_page.dart';


void main() => runApp(new CryptoNewsApp());

class CryptoNewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Crypto News App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MainPage(),
    );
  }
}
