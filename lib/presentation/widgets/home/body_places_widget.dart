import 'package:flutter/material.dart';
import 'package:travel_app/infraestructure/models/places_model.dart';
import 'package:travel_app/presentation/widgets/home/body_cardplace_widget.dart';

class BodyPlacesWidget extends StatelessWidget {
   
  const BodyPlacesWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder:(context, index) {
          return CardPlaceWidget();
        },
        ),
    );
  }
}