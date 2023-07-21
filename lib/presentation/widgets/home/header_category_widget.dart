import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/infraestructure/models/category_model.dart';

class HeaderCategoryWidget extends StatelessWidget {
   
  const HeaderCategoryWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Colors.indigo,
      child:Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemExtent: 100,
          scrollDirection: Axis.horizontal,
          itemCount:categories.length ,
          itemBuilder:(context, index) {
        
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              alignment: Alignment.center,
               child: Text( '${categories[1].name}'),
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100)
               ),
               );
          }, 
          ),
      ) 
    );
  }
}