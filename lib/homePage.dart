import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/pages/homeScreen.dart';
import 'package:instagram_ui_clone/pages/profilePage.dart';
import 'package:instagram_ui_clone/pages/reelsPage.dart';
import 'package:instagram_ui_clone/pages/searchPage.dart';
import 'package:instagram_ui_clone/pages/shopPage.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pageList=[
    HomeScreen(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage()
  ];
  int _selectedIndex=0;

  void _navigationBottomNavBar(int index){
    setState((){
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigationBottomNavBar,
        selectedItemColor: Color(0xFFe63946),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30,),label: "Home",tooltip: "Anasayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.search,size: 30,),label: "Search",tooltip: "Arama"),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection,size: 30,),label: "Reels", tooltip: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,size: 30,),label: "Shop", tooltip: "Mağaza"),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: 30,),label: "Profile", tooltip: "Profil"),
        ],
      ),
    );
  }
}
