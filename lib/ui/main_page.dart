import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {

  @override
  _MainPage createState() => new _MainPage();
}

class _MainPage extends State<MainPage> {

  Widget _buildAppBar() {
    return new AppBar(
      backgroundColor: Colors.black,
      elevation: 0.0,
      title: new Text('Test title'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _buildAppBar(),
      body: new Center(),
    );
  }
}
