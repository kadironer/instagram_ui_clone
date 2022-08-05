import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widget/profileStories.dart';
import 'package:instagram_ui_clone/widget/tab1.dart';
import 'package:instagram_ui_clone/widget/tab2.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              Icon(CupertinoIcons.lock, color: Color(0xFFe63946),),
              SizedBox(width: 5,),
              Text("kadir_oner46", style: TextStyle(color: Color(0xFFe63946),fontSize: 25),),
              SizedBox(width: 5,),
              Icon(Icons.keyboard_arrow_down,color: Color(0xFFe63946),),
                ],
              ),
          actions: [
            IconButton(
              tooltip: "Gönderi Ekle",
              icon: const Icon(Icons.add_box_outlined,color:Color(0XFFe63946), size: 30,),
              onPressed:(){
              },
            ),//Add
            IconButton(
              tooltip: "Menü",
              icon: Icon(Icons.menu,color:Color(0XFFe63946), size: 30,),
              onPressed:(){
              },
            ),//L
          ],
          ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    width: 100,
                    height: 100,
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
                      child: Image.asset("images/story_image/kadir.jpeg",fit: BoxFit.cover,),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("12", style: TextStyle(color: Color(0xFFe63946),fontSize: 30),),
                          Text("Gönderiler",style: TextStyle(color: Color(0xFFe63946),fontSize: 15),)
                        ],
                      ),
                      Column(
                        children: [
                          Text("359", style: TextStyle(color: Color(0xFFe63946),fontSize: 30),),
                          Text("Takipçi",style: TextStyle(color: Color(0xFFe63946),fontSize: 15),)
                        ],
                      ),
                      Column(
                        children: [
                          Text("466", style: TextStyle(color: Color(0xFFe63946),fontSize: 30),),
                          Text("Takip",style: TextStyle(color: Color(0xFFe63946),fontSize: 15),)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Text("Kadir Öner",style: TextStyle(color: Color(0xFFe63946),fontSize: 20),)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 5.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 140,
                  child: ElevatedButton(
                    child: Row(
                      children: [
                        Icon(Icons.add,color: Color(0xFFe63946),size: 15,),
                        Text("Durumu Ayarla",style: TextStyle(color: Color(0xFFe63946),)),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black12,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                    onPressed:(){

                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 10.0,bottom: 10.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("FÜ | Yazılım Mühendisliği",style: TextStyle(color: Color(0xFFe63946),fontSize: 15)),
            ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 5.0),
                    child: ElevatedButton(
                      child: Text("Profili Düzenle",style: TextStyle(color: Color(0xFFe63946),fontSize: 15)),
                      onPressed:(){
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: BorderSide(
                          width: 2,
                          color: Colors.black12
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: SizedBox(
                    width: 50,
                    child: ElevatedButton(
                      child: Align(
                        alignment: Alignment.center,
                          child: Icon(CupertinoIcons.person_add,color: Color(0xFFe63946),)),
                      onPressed:(){
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          side: BorderSide(
                              width: 2,
                              color: Colors.black12
                          ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ProfileStories()
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TabBar(

              indicatorColor: Color(0xFFe63946),
              automaticIndicatorColorAdjustment: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_on,color:Color(0xFFe63946),),
                ),
                Tab(
                  icon: Icon(CupertinoIcons.person_crop_square,color: Color(0xFFe63946),),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                  children:[
                    Tab1(),
                    Tab2(),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
