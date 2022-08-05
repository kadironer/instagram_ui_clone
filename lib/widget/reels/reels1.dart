import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Reels1 extends StatelessWidget {
  const Reels1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1d3557),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(CupertinoIcons.heart,size: 30,color: Colors.white,),
                      onPressed:(){
                      },
                    ),
                    IconButton(
                      icon: const Icon(CupertinoIcons.chat_bubble_text,size: 28,color: Colors.white,),
                      tooltip: "Yorum Yap",
                      onPressed:(){
                      },
                    ),
                    IconButton(
                      tooltip: "Mesajlar",
                      icon: const Icon(CupertinoIcons.paperplane,color:Colors.white, size: 25,),
                      onPressed:(){
                      },
                    ),//Mes
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.amber,
                            shape: const CircleBorder(
                            ),
                            child: Image.asset("images/story_image/kadir.jpeg",fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      const Text("kadir_oner46", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 30,
                        width: 82,
                        child: ElevatedButton(
                          child: const Text("Takip Et"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  side: const BorderSide(
                                      width: 1,
                                      color: Colors.white
                                  )
                              )
                          ),
                          onPressed:(){
                          },
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert, size: 25, color: Colors.white,),
                    onPressed:(){

                    },
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left:10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Yeni Reels Videom", style: TextStyle(color: Colors.white,)),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 7.0,bottom: 10.0),
            child: Row(
              children: const [
                Icon(Icons.graphic_eq,size: 15, color: Colors.white,),
                SizedBox(width: 5,),
                Text("kadir_oner46 - Orjinal Ses",style: TextStyle(color: Colors.white),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
