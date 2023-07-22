import 'package:flutter/material.dart';

class BodyHeaderWidget extends StatelessWidget {
   
  const BodyHeaderWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child:const Row(
        children: [
          Text('Popular Destination', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
          Spacer(),
          Text('See all', style: TextStyle(fontSize: 18, fontWeight:FontWeight.w300, color: Color(0xFF2196f3) ),)
        ],
      ),
    );
  }
}