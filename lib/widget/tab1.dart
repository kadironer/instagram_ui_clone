
import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 12,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(0.1),
          child: Card(
            child: Image.asset("images/post/gönderi.jpg",fit: BoxFit.cover,),
            shadowColor: Colors.black,
            elevation: 10,
            color: Color(0xFFe63946),
     
          ),
        );
      },
    );
  }
}
