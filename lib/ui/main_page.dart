import 'package:flutter/material.dart';
import 'package:cryptonews_mobile/ui/partials/drawer.dart';


class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Widget _buildAppBar() {
    return new AppBar(
      elevation: 0.0,
      title: new Text('Test title'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _buildAppBar(),
      drawer: new CryptoNewsDrawer(),
      body: new Center(
      ),
    );
  }
}
