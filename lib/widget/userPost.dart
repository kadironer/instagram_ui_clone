import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class UserPost extends StatelessWidget {
  String name;
  //String profilePictureName;
  UserPost({Key? key, required this.name,/*required this.profilePictureName*/}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 5.0),
                 child: SizedBox(
                   width: 50,
                   height: 50,
                   child: Card(
                     semanticContainer: true,
                     clipBehavior: Clip.antiAliasWithSaveLayer,
                     color: Colors.blue,
                     shape: CircleBorder(
                         side: BorderSide(
                             color: Color(0xFFe63946),
                             width: 2
                         )
                     ),
                     child: Image.asset("images/story_image/kadir.jpeg"),
                   ),
                 ),
               ),
               SizedBox(
                 width: 10,
               ),
               Text(name,style: TextStyle(fontWeight:FontWeight.bold,color: Color(0xFFe63946)),),
             ],
           ),
            IconButton(
              icon: Icon(Icons.more_vert, size: 25,color: Color(0xFFe63946)),
              tooltip: "Seçenekler",
              onPressed:(){
              },
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 380,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.black26),
              bottom: BorderSide( color: Colors.black26)
            )
          ),
          child: Image.asset("images/gönderi.jpg", fit: BoxFit.fill,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: LikeButton(
                    likeBuilder: (bool like){
                      return Icon(
                        like ?
                        CupertinoIcons.heart_fill : CupertinoIcons.heart,
                        color: Color(0xFFe63946),
                        size: 30,
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: Icon(CupertinoIcons.chat_bubble_text,size: 28,color: Color(0xFFe63946),),
                  tooltip: "Yorum Yap",
                  onPressed:(){
                  },
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: Icon(CupertinoIcons.paperplane,size: 28,color: Color(0xFFe63946),),
                  tooltip: "İlet",
                  onPressed:(){
                  },
                ),
              ],
            ),
            IconButton(
              icon: Icon(CupertinoIcons.bookmark,size: 28,color: Color(0xFFe63946),),
              tooltip: "Kaydet",
              onPressed:(){
              },
            ),
          ],
        ),//ikonlar
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: SizedBox(
                width: 30,
                height: 30,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Colors.blue,
                  shape: CircleBorder(
                      side: BorderSide(
                        color: Color(0xFFe63946)
                      ),
                  ),
                  child: Image.asset("images/story_image/samet.jpeg"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Text("samett.avcii ve 138 diğer kişi",style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFe63946) ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Text("beğendi", style: TextStyle(color: Color(0xFFe63946)),),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text("kadir_oner46", style: TextStyle(color: Color(0xFFe63946), fontWeight: FontWeight.bold),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Text("Beğenmeyi unutmayın :)", style: TextStyle(color: Color(0xFFe63946)),),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 5.0),
              child: Text("Yorumlar kapalı.", style: TextStyle(color: Colors.black54),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3.0, top: 5.0),
              child: Text("Kontrolleri gözden geçir.", style: TextStyle(color: Colors.blue.shade300),),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 5.0),
          child: Align(
            alignment: Alignment.centerLeft,
              child: Text("2 Temmuz",style: TextStyle(color: Colors.black54),)),
        ),
        SizedBox(
          height: 20,
        )

      ],
    );
    }
}
