import 'package:flutter/material.dart';
import 'package:cryptonews_mobile/ui/partials/drawer.dart';


class ConverterPage extends StatefulWidget {

  @override
  _ConverterPageState createState() => new _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {

  Widget _buildAppBar() {
    return new AppBar(
      elevation: 0.0,
      title: new Text('Converter'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _buildAppBar(),
      drawer: new CryptoNewsDrawer(),
      body: new Container(),
    );
  }
}