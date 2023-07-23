import 'package:flutter/material.dart';
import 'package:travel_app/presentation/widgets/home/body_home_widget.dart';
import 'package:travel_app/presentation/widgets/home/header_home_widget.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      body:SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HeaderHomeWidget(),
              SizedBox(height: 20,),
              BodyHomeWidget()
            ],
          ),
        ),
      )
    );
  }
}