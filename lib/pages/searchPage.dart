import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  var tfEdit=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Color(0xFFe63946),
            hintText: "Ara",
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))
            )
          ),
        ),
      ),
    );
  }
}
