import 'package:flutter/material.dart';
import 'package:humming_birds/components/customDrawer.dart';
import 'package:humming_birds/components/newsCard.dart';
import 'package:humming_birds/screens/ProfileScreen.dart';
import 'package:humming_birds/screens/VideosScreen.dart';
import '../utils/contsants.dart';
import '../utils/newsList.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  void homeOnTap() {
    Navigator.pop(context);
  }

  void profileOnTap() {
    Navigator.pushNamed(context, ProfileScreen.id);
  }

  void videosOnTap(){
    Navigator.pushNamed(context, VideosScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Home'),backgroundColor: kPrimaryColor,),
      drawer: customDrawer(context,profileOnTap,homeOnTap,videosOnTap),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
              itemCount: news.length,
              itemBuilder: (context,idx) {
                return NewsCard(headlineText: news[idx]['headline'],imageURL: news[idx]['imageUrl'],descriptionText: news[idx]['description'],date: news[idx]['publishedAt'],tag: news[idx]['tag'],);
              }
          ),
        ),
      ),
    );
  }
}
