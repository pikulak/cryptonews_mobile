import 'package:flutter/material.dart';
import 'package:cryptonews_mobile/ui/partials/drawer.dart';
import 'package:cryptonews_mobile/ui/converter/converter_form.dart';


class ConverterPage extends StatelessWidget {

  final EdgeInsets padding = const EdgeInsets.symmetric(
    horizontal: 20.0
  );
  final EdgeInsets descPadding = const EdgeInsets.symmetric(
    vertical: 50.0
  );
  final TextStyle descStyle = const TextStyle(
    fontSize: 17.0,
    letterSpacing: 1.0
  );

  Widget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      title: new Text('Converter'),
    );
  }

  Widget _buildDescription() {
    String desc = "This tool allows you to quickly compare two cryptocurrencies. "
                   "We use latest pricing data from CryptoCurrency API.";

    return Container(
      padding: descPadding,
      child: Text(
        desc,
        style: descStyle,
        textAlign: TextAlign.center,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: CryptoNewsDrawer(),
      body: Container(
        padding: padding,
        child: Column(
          children: [
            _buildDescription(),
            ConverterForm(),
            ConverterForm()
          ],
        ),
      ),
    );
  }
}