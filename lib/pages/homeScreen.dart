import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widget/stories.dart';
import 'package:instagram_ui_clone/widget/userPost.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

   var userName=["Hikayen","cagadalga","adematiciii","kimsesiz...","kaan.onerx","fastdrivers_","webtekno","faysal_mt","samett.avcii","aykut.sarac","mstffaozcnn"];
   var profilePicture=["kadir.jpeg","çağatay.jpeg","adem.jpeg","ömer.jpeg","kaan.jpeg","fastdriver.jpeg","webtekno.jpeg","faysal.jpeg","samet.jpeg","aykut.jpeg","mustafa.jpeg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 160,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset("images/Instagram_logo.png" ,width: 150,),
        ),
        actions: [
          IconButton(
            tooltip: "Gönderi Ekle",
            icon: Icon(Icons.add_box_outlined,color:Color(0XFFe63946), size: 30,),
            onPressed:(){
            },
          ),//Add
          IconButton(
            tooltip: "Beğeniler",
            icon: Icon(CupertinoIcons.heart,color:Color(0XFFe63946), size: 30,),
            onPressed:(){
            },
          ),//Like
          IconButton(
            tooltip: "Mesajlar",
            icon: Icon(CupertinoIcons.paperplane,color:Color(0XFFe63946), size: 25,),
            onPressed:(){
            },
          ),//Message
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: userName.length,
                itemBuilder: (context,index){
                  return BubleStories(name: userName[index], profilePictureName:profilePicture[index] ,);
                },


              ),
            ),
            UserPost(name: "kadir_oner46"),
            UserPost(name: "kadir_oner46"),
            UserPost(name: "kadir_oner46"),
            UserPost(name: "kadir_oner46"),
          ],
        ),
      ),//Story
    );
  }
}
