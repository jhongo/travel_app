import 'package:flutter/material.dart';
import 'package:travel_app/presentation/widgets/home/header_category_widget.dart';
import 'package:travel_app/presentation/widgets/home/header_search_widget.dart';
import 'package:travel_app/presentation/widgets/home/header_welcome_widget.dart';

class HeaderHomeWidget extends StatelessWidget {
   
  const HeaderHomeWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          WelcomeHeaderWidget(),
          SizedBox(height: 30,),
          HeaderSearchWidget(),
          HeaderCategoryWidget()
        ],
      ),
    );
  }
}