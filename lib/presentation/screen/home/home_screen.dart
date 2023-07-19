import 'package:flutter/material.dart';
import 'package:travel_app/presentation/widgets/home/header_home_widget.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HeaderHomeWidget()
            ],
          ),
        ),
      )
    );
  }
}