
import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(0.1),
          child: Card(
            shadowColor: Colors.black,
            elevation: 10,
            color: Color(0xFFe63946),

          ),
        );
      },
    );
  }
}
