import 'package:flutter/material.dart';
import 'package:cryptonews_mobile/ui/news/news_list_item.dart';


class NewsList extends StatelessWidget {

  Widget _buildContent(BuildContext context) {
    return Container(
      child: Scrollbar(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return NewsListItem();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildContent(context);
  }
}
