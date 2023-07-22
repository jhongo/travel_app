import 'package:flutter/material.dart';
import 'package:travel_app/presentation/widgets/home/body_curve_widget.dart';


class CardPlaceWidget extends StatelessWidget {
  const CardPlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: 190,
      decoration: _Decoration(),
      child: Stack(
        children: [
          Positioned(right: 0,child: CurveWidget(painter: BorderPaint()),)
          // Container()
        ],
      )
      
    );
  }

  BoxDecoration _Decoration() => BoxDecoration(
    color: Color(0xFF1d3557),
    borderRadius: BorderRadius.circular(35)
  );
}


class BorderPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint(); 
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width , size.height * 0.9, size.width * 0.7, size.height * 0.85);
    path.quadraticBezierTo(size.width * 0.3 , size.height * 0.8, size.width * 0.2 , size.height * 0.4 );
    path.quadraticBezierTo(size.width * 0.13 ,0, 0, 0 );
    // path.moveTo(size.width * 0.55 , 0);
    // path.lineTo(0, 0);
     

  canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
  return true;
  }
  
}