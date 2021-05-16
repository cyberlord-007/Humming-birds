import 'package:flutter/material.dart';
import 'package:humming_birds/components/customDrawer.dart';
import 'package:humming_birds/screens/HomeScreen.dart';
import 'package:humming_birds/utils/contsants.dart';

class ProfileScreen extends StatefulWidget {
  static String id = 'profile_screen';
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void homeOnTap() {
    Navigator.pushNamed(context, HomeScreen.id);
  }

  void profileOnTap() {
    Navigator.pop(context);
  }

  void videosOnTap(){
    Navigator.pop(context);
  }

  List formFields= [
    {
      'field': 'Location',
      'value': 'C-3 Street,New Jearsey',
    },
    {
      'field': 'Pin Code',
      'value': '212223',
    },
    {
      'field': 'Date Of Birth',
      'value': '01-04-2000',
    },
    {
      'field': 'Gender',
      'value': 'Male',
    },
    {
      'field': 'WhatsApp',
      'value': '+91 6345271451',
    },
    {
      'field': 'Email',
      'value': 'jondoe12@gmail.com',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Profile'),backgroundColor: kPrimaryColor,),
      drawer: customDrawer(context, profileOnTap, homeOnTap, videosOnTap),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50),
            height: 280,
            decoration: BoxDecoration(
              color: kSecodaryColor[100],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80),bottomRight: Radius.circular(80))
            ),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar.png'),backgroundColor: Colors.white,radius: 60,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Jon Doe',style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.edit,size: 18,),
                      SizedBox(width: 5,),
                      Text('Edit Profile',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context,idx){
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey,width: 2))
                        ),
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(formFields[idx]['field'],style: kFormFieldStyle,),
                            SizedBox(height: 10,),
                            Text(formFields[idx]['value']),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
