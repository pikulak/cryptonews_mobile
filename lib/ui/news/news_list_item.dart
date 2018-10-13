import 'package:flutter/material.dart';


class NewsListItem extends StatelessWidget {

  // Properties
  final EdgeInsets margin = const EdgeInsets.only(
    right: 25.0,
    bottom: 20.0,
    left: 25.0
  );
  final EdgeInsets padding = const EdgeInsets.only(
    top: 20.0,
    right: 12.0,
    bottom: 20.0,
    left: 12.0
  );
  final BorderRadius borderRadius = BorderRadius.all(
    Radius.circular(8.0)
  );

  final EdgeInsets textColumnPadding = const EdgeInsets.only(
    top: 5.0
  );
  final EdgeInsets titlePadding = const EdgeInsets.only(
    right: 10.0,
    bottom: 5.0
  );
  final TextStyle titleStyle = const TextStyle(
    fontWeight: FontWeight.w500
  );
  final TextStyle subtitleStyle = const TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.w400
  );


  Widget _buildTitle(BuildContext context) {
    return Container(
      padding: titlePadding,
      child: Text(
        "Bitcoin (BTC) Price Watch: Just a Few Support Zones Left",
        style: titleStyle
      )
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return Row(
      children: [
        Text(
          "27 minutes ago by",
          style: subtitleStyle.apply(color: Theme.of(context).disabledColor)
        ),
        Text(
          " CNN",
          style: subtitleStyle
        )
      ],
    );
  }

  Widget _buildTextColumn(BuildContext context) {
    return Container(
      padding: textColumnPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(context),
          _buildSubtitle(context)
        ],
      )
    );
  }

  Widget _buildThumbnail(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Image.network(
        'https://via.placeholder.com/150x150',
        width: 72.0,
        height: 72.0
      )
    );
  }

  Widget _buildContent(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: _buildTextColumn(context),
        ),
        _buildThumbnail(context)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Theme.of(context).accentColor
      ),
      margin: margin,
      padding: padding,
      child: _buildContent(context)
    );
  }
}
