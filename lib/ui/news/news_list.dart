import 'package:flutter/material.dart';


class NewsList extends StatelessWidget {

  Widget _buildContent(BuildContext context) {
    return Container(
      child: Scrollbar(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Material(
              child: ListTile(
                leading: const Icon(Icons.event_seat),
                title: const Text('The seat for the narrator'),
              ),
            );
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
