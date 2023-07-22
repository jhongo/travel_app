import 'package:flutter/material.dart';
import 'package:travel_app/presentation/widgets/home/body_header_widget.dart';
import 'package:travel_app/presentation/widgets/home/body_places_widget.dart';

class BodyHomeWidget extends StatelessWidget {
   
  const BodyHomeWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          BodyHeaderWidget(),
          BodyPlacesWidget()
          
        ],
      );
  }
}