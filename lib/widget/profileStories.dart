import 'package:flutter/material.dart';

class ProfileStories extends StatelessWidget {


  var profilStory=["car.jpeg","cat.jpeg","music.jpeg","user.jpeg","wheather.jpeg"];

  ProfileStories({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0,top: 10),
      child: Row(
        children: [
          SizedBox(
            width: 75,
            height: 75,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.amber,
              shape: CircleBorder(
              ),
              child: Image.asset("images/profileStoryImage/user.jpeg",fit: BoxFit.cover,),
            ),
          ),
          SizedBox(
            width: 75,
            height: 75,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.amber,
              shape: CircleBorder(
              ),
              child: Image.asset("images/profileStoryImage/car.jpeg",fit: BoxFit.cover,),
            ),
          ),
          SizedBox(
            width: 75,
            height: 75,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.amber,
              shape: CircleBorder(
              ),
              child: Image.asset("images/profileStoryImage/cat.jpeg",fit: BoxFit.cover,),
            ),
          ),
          SizedBox(
            width: 75,
            height: 75,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.amber,
              shape: CircleBorder(
              ),
              child: Image.asset("images/profileStoryImage/music.jpeg",fit: BoxFit.cover,),
            ),
          ),
          SizedBox(
            width: 75,
            height: 75,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.amber,
              shape: CircleBorder(
              ),
              child: Image.asset("images/profileStoryImage/wheather.jpeg",fit: BoxFit.cover,),
            ),
          ),
        ],
      ),
    );
  }
}
