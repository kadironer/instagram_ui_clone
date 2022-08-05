import 'package:flutter/material.dart';

class SearchGrid extends StatelessWidget {
  const SearchGrid({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.1),
      child: Card(
        shadowColor: Colors.black,
              elevation: 10,
              color: Color(0xFFe63946),

      ),
    );
  }
}
