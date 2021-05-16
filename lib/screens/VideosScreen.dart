import 'package:flutter/material.dart';
import 'package:humming_birds/components/newsCard.dart';
import 'package:humming_birds/screens/HomeScreen.dart';
import '../components/customDrawer.dart';
import 'ProfileScreen.dart';
import '../utils/contsants.dart';
import '../utils/newsList.dart';

class VideosScreen extends StatefulWidget {
  static String id = 'videos_screen';
  const VideosScreen({Key key}) : super(key: key);

  @override
  _VideosScreenState createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  void homeOnTap() {
    Navigator.pushNamed(context, HomeScreen.id);
  }

  void profileOnTap() {
    Navigator.pushNamed(context, ProfileScreen.id);
  }

  void videosOnTap(){
    Navigator.pop(context);
  }

  String url = 'https://cbsnews3.cbsistatic.com/hub/i/r/2021/05/15/ceb6525e-680b-4563-9cb9-e1e9063dcd07/thumbnail/1200x630/19375da2f8a5eb37f77b34a053d1dd31/cbsn-fusion-push-for-electric-cars-gets-a-boost-after-fuel-pipeline-hack-thumbnail-715798-640x360.jpg';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Videos'),backgroundColor: kPrimaryColor,),
      drawer: customDrawer(context,profileOnTap,homeOnTap,videosOnTap),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 200,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(url,),
                fit: BoxFit.cover,
              ),
            ),
            child: Icon(Icons.play_arrow_rounded,color: Colors.white,size: 120,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Text(news[0]['headline'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black54),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(news[0]['publishedAt'],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(news[0]['description']),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 5,
              shadowColor: Colors.grey,
              child: Container(
                color: Colors.grey[100],
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [Text('Information',style: TextStyle(fontWeight: FontWeight.bold),)],),
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                    itemCount: news.length,
                    itemBuilder: (context,idx){
                      return NewsCard(
                        headlineText: news[idx]['headline'],
                        imageURL: news[idx]['imageUrl'],
                        date: news[idx]['publishedAt'],tag: news[idx]['tag'],descriptionText: news[idx]['description'],);
                    }
                ),
              )
          )
        ],
      ),
    );
  }
}
