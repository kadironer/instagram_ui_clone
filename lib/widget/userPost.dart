import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            )
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
                IconButton(
                  icon: Icon(CupertinoIcons.heart,size: 30,color: Color(0xFFe63946),),
                  tooltip: "Beğen",
                  onPressed:(){
                  },
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
        )
      ],
    );
    }
}
