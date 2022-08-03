import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widget/search_grid.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  var postGridImage=["g1.jpg","g2.jpg","g3.jpg","g4.jpg","g5.jpg","g6.jpg","g7.jpg","g8.jpg","g9.jpg","g10.jpg","g11.jpg","g12.jpg","g13.jpg","g14.jpg","g15.jpg","g16.jpg","g17.jpg","g18.jpg","g19.jpg","g20.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SizedBox(
          height: 40,
          child: TextField(
            cursorColor: Color(0xFFe63946),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Color(0xFFe63946),),
              hintText: "Ara",
              filled: true,
              fillColor: Color(0xFFefefef),
              contentPadding: EdgeInsets.only(top: 5.0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(
                  color: Color(0xFFe63946),
                )
              ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: Color(0xFFe63946),
                  )
                ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              )
            ),
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: postGridImage.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index){
         return SearchGrid(postGrid: postGridImage[index]);
        },
      )
    );
  }
}
