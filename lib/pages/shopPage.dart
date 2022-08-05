
import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widget/shopGrid.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Mağaza", style: TextStyle(color: Color(0xFFe63946), fontSize: 25),)),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.calendar_month, color: Color(0xFFe63946), size: 30,),
                      onPressed:(){},
                    ),
                    IconButton(
                      icon: const Icon(Icons.menu, color: Color(0xFFe63946), size: 30,),
                      onPressed:(){},
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 5,),
            SizedBox(
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
          ],
        ),
      ),
        body: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index){
            return const ShopGrid();
          },
        )
    );
  }
}
