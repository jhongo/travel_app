import 'package:flutter/material.dart';


class CardPlaceWidget extends StatelessWidget {
  const CardPlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: 190,
      decoration: _Decoration(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: CustomPaint(
          painter:BorderPaint() ,
        ),
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
    path.lineTo(size.width, size.height * 0.3);
    path.quadraticBezierTo(size.width , size.height * 0.2, size.width * 0.87, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.7 , size.height * 0.21, size.width * 0.71 , size.height * 0.1 );
    path.quadraticBezierTo(size.width * 0.7 ,0, size.width * 0.55 , 0 );
    path.moveTo(size.width * 0.55 , 0);
    path.lineTo(size.width, 0);
     

  canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
  return true;
  }
  
}