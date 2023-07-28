import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Hero(
                tag: 'image-place',
                child: ImageCard(urlImage: places.url, sizeCard: 450)),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 550,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
            ),
            SafeArea(
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    ButtonHeader(function: () => Navigator.pop(context),),
                    const Spacer(),
                   
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonHeader extends StatelessWidget {

  final VoidCallback function;
  const ButtonHeader({super.key, required this.function});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: function,
        style: TextButton.styleFrom(
            backgroundColor: Colors.white.withOpacity(0.5),
            shape: const CircleBorder()),
        child: const FaIcon(
          FontAwesomeIcons.chevronLeft,
          color: Colors.white,
        ));
  }
}
