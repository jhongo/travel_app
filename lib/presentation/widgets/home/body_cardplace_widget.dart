import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/infraestructure/models/places_model.dart';
import 'package:travel_app/presentation/widgets/home/body_curve_widget.dart';


class CardPlaceWidget extends StatelessWidget {

  final Places places;
  const CardPlaceWidget({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: 190,
      decoration: _Decoration(),
      child: Stack(
        children: [
          
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)  ),
            child: Container(
              width: double.infinity,
              height: 180,
              child: Image.asset(places.url, fit: BoxFit.fill),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)  ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(places.place, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),maxLines: 1, overflow: TextOverflow.ellipsis, ),
                    const SizedBox(height: 5,),
                    Row(children: [
                      const FaIcon(FontAwesomeIcons.locationDot, color: Color(0xFF5465ff), size: 15,),
                      const SizedBox(width: 5,),
                      Text(places.location,style: const TextStyle(color: Color(0xFFa5a5a5)),)
                    ],)
                  ],
                ),
              ),
            ),
          ),
          Positioned(right: 0,child: CurveWidget(painter: BorderPaint()),),
        ],
      )
      
    );
  }

  BoxDecoration _Decoration() => BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(35)
  );
}


class BorderPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint(); 
    paint.color = const Color(0xFFf2f2f2);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width , size.height * 0.85, size.width * 0.67, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.2 , size.height * 0.7, size.width * 0.15 , size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.1 ,0 , 0 ,0);
     

  canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
  return true;
  }
  
}