import 'package:flutter/material.dart';

class BubleStories extends StatelessWidget {
  String name;
  String profilePictureName;

  BubleStories({Key? key, required this.name , required this.profilePictureName}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10.0),
      child: Column(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.amber,
              shape: CircleBorder(
                side: BorderSide(
                  color: Color(0xFFe63946),
                  width: 2
                )
              ),
              child: Image.asset("images/story_image/${profilePictureName}",fit: BoxFit.cover,),
            ),
          ),

          SizedBox(
            height: 5,
          ),

          Text(name,style: TextStyle(color: Color(0xFFe63946)),)
        ],
      ),
    );
  }
}
