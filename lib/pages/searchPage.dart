import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widget/search_grid.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SizedBox(
          height: 40,
          child: TextField(
            cursorColor: const Color(0xFFe63946),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search, color: Color(0xFFe63946),),
              hintText: "Ara",
              filled: true,
              fillColor: const Color(0xFFefefef),
              contentPadding: const EdgeInsets.only(top: 5.0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: const BorderSide(
                  color: Color(0xFFe63946),
                )
              ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color: Color(0xFFe63946),
                  )
                ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              )
            ),
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index){
         return Padding(
           padding: const EdgeInsets.only(top:40.0),
           child: SearchGrid(),
         );
        },
      )
    );
  }
}
