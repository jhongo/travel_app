import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HeaderCategoryWidget extends StatelessWidget {
   
  const HeaderCategoryWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: Colors.indigo,
      child: ListView.builder(
        dragStartBehavior: DragStartBehavior.down,
        scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder:(context, index) {
        return Chip(
          label:Row(
          children: [
            Icon(Icons.volcano_outlined)
          ],
        ));
      },
      ),
    );
  }
}