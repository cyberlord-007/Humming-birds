import 'package:flutter/material.dart';
import 'package:humming_birds/screens/ProfileScreen.dart';
import '../utils/contsants.dart';

Widget customDrawer(context,Function profileOnTap,Function homeOnTap,Function videosOnTap) {
  return SafeArea(
    child: Drawer(
      elevation: 5,
      child: ListView(
        children: [
          DrawerHeader(
            curve: Curves.bounceIn,
            decoration: BoxDecoration(
                color: kSecodaryColor
            ),
            child: Container(
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('assets/images/avatar.png'),minRadius: 50,backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello,',
                          style: kUserTextStyle,
                        ),
                        Text('Jon Doe',style: kUserTextStyle,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              focusColor: kSecodaryColor,
              title: Text('Home',style: kHeadingStyle,),
              onTap: homeOnTap,
          ),
          ListTile(
            leading: Icon(Icons.video_call),
            focusColor: kSecodaryColor,
            title: Text('Videos',style: kHeadingStyle),
            onTap: videosOnTap,
          ),
          ListTile(
            leading: Icon(Icons.person),
            focusColor: kSecodaryColor,
            title: Text('Profile',style: kHeadingStyle),
            onTap: profileOnTap
          ),
        ],
      ),
    ),
  );
}