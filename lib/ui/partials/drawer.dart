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

  Function navigateTo(BuildContext context, String routeName){
    return () => Navigator.pushNamed(context, routeName);
  }

  Function close(BuildContext context){
    return () => Navigator.pop(context);
  }

  Widget _buildIconizedItem(String text, IconData icon, {Function onTap}) {
    return new ListTile(
      leading: new Icon(icon),
      title: new Text(text),
      onTap: onTap ?? onTap
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
          _buildIconizedItem(
            "News",
            Icons.format_quote,
            onTap: navigateTo(context, '/')
          ),
          _buildIconizedItem(
            "Converter",
            Icons.attach_money,
            onTap: navigateTo(context, '/converter')
          ),
          _buildIconizedItem(
            "About",
            Icons.info,
            onTap: navigateTo(context, '/about')
          ),
          _buildIconizedItem(
            "Close",
            Icons.arrow_back,
            onTap: close(context)
          ),
          _buildDrawerFooter()
        ],
      )
    );
  }
}
