import 'package:flutter/material.dart';
import 'package:cryptonews_mobile/ui/partials/drawer.dart';
import 'package:cryptonews_mobile/ui/news/news_list.dart';


class NewsPage extends StatefulWidget {

  @override
  _NewsPageState createState() => new _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  Widget _buildAppBar() {
    return new AppBar(
      elevation: 0.0,
      title: new Text('News page'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _buildAppBar(),
      drawer: new CryptoNewsDrawer(),
      body: new NewsList(),
    );
  }
}