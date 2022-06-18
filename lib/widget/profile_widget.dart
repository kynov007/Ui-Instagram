import 'package:flutter/material.dart';

class Profile_Item extends StatelessWidget {
  const Profile_Item({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 15),
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red, Colors.amber],
            ),
            borderRadius: BorderRadius.circular(100 / 2),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15),
          width: 82,
          height: 82,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://instagram.fsub9-1.fna.fbcdn.net/v/t51.2885-19/135235466_1368947323473692_9094190549751763970_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fsub9-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=KcjkQSRTnZ4AX_OGvlU&tn=e0s0ux-Aaz9jiIvD&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT-V2Uf7WKn4s3AoF34XLirtsYRKfKCPWYigFJSAuBO9QQ&oe=62B19617&_nc_sid=8fd12b')),
            color: Colors.grey[300],
            border: Border.all(width: 3, color: Colors.white),
            borderRadius: BorderRadius.circular(100 / 2),
          ),
        ),
      ],
    );
  }
}
