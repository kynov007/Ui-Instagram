import 'dart:ui';
import 'dart:math';
import '../widget/Info_item.dart';
import '../widget/arsip_widget.dart';

import 'package:belajar/widget/profile_widget.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Colors.black),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: Row(
          children: [
            Text('aldikirito'),
            Container(
              margin: EdgeInsets.only(left: 5),
              height: 18,
              width: 25,
              decoration: BoxDecoration(
                  color: Colors.red[600],
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  '99+',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Profile_Item(),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 60, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Info_Item(
                            value: '2',
                            title: 'Posts',
                          ),
                          Info_Item(title: 'Followers', value: '1M'),
                          Info_Item(title: 'Following', value: '2'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      'Muhammad Dicky Novaldi',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/centang.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  '------------------------------',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  'Aku sayang Zahra 💕',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width: 340,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.black,
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {},
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            primary: Colors.black,
                            side: BorderSide(color: Colors.white)),
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_add_outlined,
                          color: Colors.white,
                        ),
                        label: Text('')),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    arsip_Story(
                      imageUrl: 'https://picsum.photos/200/300',
                      title: 'Pacar',
                    ),
                    arsip_Story(
                      imageUrl: 'https://picsum.photos/100/300',
                      title: 'holiday',
                    ),
                    arsip_Story(
                      imageUrl: 'https://picsum.photos/220/300',
                      title: 'work',
                    ),
                    arsip_Story(
                      imageUrl: 'https://picsum.photos/240/300',
                      title: 'gabut',
                    ),
                    arsip_Story(
                      imageUrl: 'https://picsum.photos/250/300',
                      title: 'family',
                    ),
                    arsip_Story(
                      imageUrl: 'https://picsum.photos/220/300',
                      title: 'cat',
                    ),
                    arsip_Story(
                      imageUrl: 'https://picsum.photos/230/300',
                      title: 'hobby',
                    ),
                    arsip_Story(
                      imageUrl: 'https://picsum.photos/270/300',
                      title: 'eat',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  tabItem(Iconn: Icons.grid_on_outlined, isActive: true),
                  tabItem(Iconn: Icons.ondemand_video_rounded, isActive: false),
                  tabItem(Iconn: Icons.person_pin_outlined, isActive: false),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 50,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 1, crossAxisSpacing: 1),
                itemBuilder: (context, index) => Image.network(
                  'https://picsum.photos/id/${index + 1}/200/300',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.movie,
                size: 35,
              ),
              label: 'movie',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 35,
              ),
              label: 'shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 35,
              ),
              label: 'person',
            ),
          ]),
    );
  }
}

class tabItem extends StatelessWidget {
  const tabItem({
    Key? key,
    required this.Iconn,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;
  final IconData Iconn;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isActive == true ? Colors.white : Colors.black,
              width: 1,
            ),
          ),
        ),
        child: Icon(
          Iconn,
          color: Colors.white,
        ),
      ),
    );
  }
}
