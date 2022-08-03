import 'package:flutter/material.dart';

class SearchGrid extends StatelessWidget {
  String postGrid;
  SearchGrid({Key? key, required this.postGrid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.1),
      child: Card(
        shadowColor: Colors.black,
              elevation: 10,
              color: Colors.transparent,
                  child: Image.asset("images/post/${postGrid}", fit: BoxFit.cover,),

      ),
    );
  }
}
