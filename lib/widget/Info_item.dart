import 'package:flutter/material.dart';

class Info_Item extends StatelessWidget {
  const Info_Item({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
