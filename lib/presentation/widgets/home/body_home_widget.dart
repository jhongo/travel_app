import 'package:flutter/material.dart';
import 'package:travel_app/presentation/widgets/home/body_header_widget.dart';
import 'package:travel_app/presentation/widgets/home/body_places_widget.dart';
import 'package:travel_app/presentation/widgets/home/nearby_home_widget.dart';

class BodyHomeWidget extends StatelessWidget {
   
  const BodyHomeWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          BodyHeaderWidget(),
          SizedBox(height: 10,),
          BodyPlacesWidget(),
          SizedBox(height: 20,),
          NearbyHomeWidget(),

        ],
      );
  }
}