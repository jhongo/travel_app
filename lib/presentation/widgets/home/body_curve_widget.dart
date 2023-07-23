import 'package:flutter/material.dart';

class CurveWidget extends StatelessWidget {

  final CustomPainter painter;

  const CurveWidget({super.key, required this.painter});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topRight: Radius.circular(35)),
      child: Container(
        width: 75,
        height: 75,
        // color: Colors.indigo,
        child: CustomPaint(
          painter: painter,

        ),
      ),
    );
  }
}
