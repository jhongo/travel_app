import 'package:flutter/material.dart';
import 'package:travel_app/infraestructure/models/places_model.dart';
import 'package:travel_app/presentation/widgets/home/image_card_widget.dart';


class DetailsScreen extends StatelessWidget {
  final Places places;
  const DetailsScreen({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width:size.width,
        height: size.height,
        child: Stack(
          children: [
            ImageCard(urlImage: places.url, sizeCard: 450),
            Positioned( bottom: 0, left: 0, right: 0,
              child: Container(
                width: double.infinity,
                height: 550,
                decoration: BoxDecoration(
                color: Colors.indigo,
                  borderRadius:BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}