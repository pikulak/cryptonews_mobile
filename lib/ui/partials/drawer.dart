import 'package:flutter/material.dart';

class CryptoNewsDrawer extends StatelessWidget {

  Widget _buildDrawerHeader() {
    return new DrawerHeader(
      child: new Container(
        child: new Center(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("Crypto news",
                      style: TextStyle(fontSize: 20.0)
                  ),
                  new Padding(padding: EdgeInsets.all(3.0)),
                  new Text("Cryptocurrencies in your hand.",
                      style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ]
            )
        ),
      ),
    );
  }

  Widget _buildIconizedItem(String text, IconData icon){
    return new ListTile(
      leading: new Icon(icon),
      title: new Text(text),
    );
  }

  Widget _buildDrawerFooter() {
    return new Expanded(
      child: new Align(
          alignment: FractionalOffset.bottomCenter,
          child: new Padding(
              padding: EdgeInsets.all(15.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Text("Powered by CryptoCurrency API",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              )
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Column(
        children: <Widget>[
          _buildDrawerHeader(),
          _buildIconizedItem("News", Icons.format_quote),
          _buildIconizedItem("Converter", Icons.attach_money),
          _buildIconizedItem("About", Icons.info),
          _buildIconizedItem("Close", Icons.arrow_back),
          _buildDrawerFooter()
        ],
      )
    );
  }
}
