import 'package:flutter/material.dart';


class ConverterForm extends StatefulWidget {
  @override
  _ConverterFormState createState() => _ConverterFormState();
}

class _ConverterFormState extends State<ConverterForm> {

  final _formKey = GlobalKey<FormState>();

  final EdgeInsets margin = const EdgeInsets.only(
    bottom: 20.0
  );
  final EdgeInsets padding = const EdgeInsets.all(
    20.0
  );
  final EdgeInsets textInputPadding = const EdgeInsets.symmetric(
    horizontal: 15.0
  );
  final EdgeInsets rowMargin = const EdgeInsets.only(
    top: 10.0
  );
  final BorderRadius borderRadius = BorderRadius.all(
    Radius.circular(8.0)
  );
  final InputDecoration currencyInputDecoration = const InputDecoration(
    border: InputBorder.none,
  );

  BoxDecoration formDecoration(BuildContext context) {
    return BoxDecoration(
      borderRadius: borderRadius,
      color: Theme.of(context).accentColor
    );
  }

  BoxDecoration fieldDecoration(BuildContext context) {
    return BoxDecoration(
      borderRadius: borderRadius,
      color: Theme.of(context).primaryColorDark
    );
  }

  Widget _buildCurrencyInput(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: fieldDecoration(context),
            padding: textInputPadding,
            margin: rowMargin,
            child: TextField(
              autofocus: true,
              decoration: currencyInputDecoration
            )
          ),
        )
      ],
    );
  }

  Widget _buildCurrencyListDropdownButton(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton(
          elevation: 0,
          items: [
            DropdownMenuItem(
              value: "BTC",
              child: Center(
                child: Text("BTC")
              )
            ),
            DropdownMenuItem(
              value: "BTC",
              child: Center(
                child: Text("BTC")
              )
            ),
            DropdownMenuItem(
              value: "BTC",
              child: Center(
                child: Text("BTC")
              )
            ),
            DropdownMenuItem(
              value: "BTC",
              child: Center(
                child: Text("BTC")
              )
            )
          ],
          onChanged: (_) {},
        )
      ),
    );
  }

  Widget _buildCurrencyListDropdown(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: fieldDecoration(context),
            child: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Theme.of(context).primaryColorDark
              ),
              child: _buildCurrencyListDropdownButton(context)
            )

          )
        )
      ],
    );
  }

  Widget _buildFixedCurrencies(BuildContext context) {
    return Container(
      margin: rowMargin,
      child: Row(
        children: [
          Expanded(
            child: Text("\$ 6500.00")
          ),
          Text("₿ 0.0005")
        ],
      )
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        _buildCurrencyListDropdown(context),
        _buildCurrencyInput(context),
        _buildFixedCurrencies(context)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        decoration: formDecoration(context),
        margin: margin,
        padding: padding,
        child: _buildContent(context)
      ));
  }
}
