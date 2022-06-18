import 'package:flutter/material.dart';

class arsip_Story extends StatelessWidget {
  const arsip_Story({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl)),
              color: Colors.black,
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(100 / 2)),
        ),
        Container(
          margin: EdgeInsets.only(right: 20, top: 10),
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
