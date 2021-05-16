
import 'package:flutter/material.dart';
import 'package:humming_birds/utils/contsants.dart';

class NewsCard extends StatelessWidget {

  final headlineText;
  final imageURL;
  final descriptionText;
  final date;
  final tag;
  NewsCard({this.headlineText,this.imageURL,this.descriptionText,this.date,this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 120,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(imageURL,height: 120,width: 130,fit: BoxFit.cover,),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 210,
                  child: Text(headlineText,style: kNewsHeadline,overflow: TextOverflow.ellipsis,maxLines: 2,)
              ),
              Container(
                width: 210,
                child: Text(descriptionText,overflow: TextOverflow.ellipsis,maxLines: 3,),
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.calendar_today,size: 18,),
                        SizedBox(width: 2,),
                        Text(date),
                      ],
                    )
                  ),
                  SizedBox(width: 30,),
                  Container(
                    width: 60,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Center(child: Text(tag,style: TextStyle(fontSize: 12),)),
                  ),
                  Icon(Icons.bookmark_border),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
