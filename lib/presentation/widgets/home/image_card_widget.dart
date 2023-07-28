import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String urlImage;
  final double sizeCard;

  const ImageCard({super.key, required this.urlImage, required this.sizeCard});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: sizeCard,
        child: FadeInImage(
          placeholder: const AssetImage('assets/gifs/loadingImage.gif'),
          image: AssetImage(urlImage),
          fit: BoxFit.fill,
        ));
  }
}
