import 'package:flutter/material.dart';

class AppDriver extends StatelessWidget {
  const AppDriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Divider(
        height: 0,
        indent: 16,
        endIndent: 16,
        thickness: 0.8,
      ),
    );
  }
}
