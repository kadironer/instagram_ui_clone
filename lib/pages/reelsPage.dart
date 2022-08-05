import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widget/reels/reels1.dart';
import 'package:instagram_ui_clone/widget/reels/reels2.dart';
import 'package:instagram_ui_clone/widget/reels/reels3.dart';

class ReelsPage extends StatelessWidget {
   ReelsPage({Key? key}) : super(key: key);

  final controller = PageController();


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: const [
        Reels1(),
        Reels2(),
        Reels3(),
      ],
    );
  }
}
