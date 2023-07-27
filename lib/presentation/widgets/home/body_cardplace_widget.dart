import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/infraestructure/models/places_model.dart';
import 'package:travel_app/presentation/widgets/home/body_curve_widget.dart';
import 'package:travel_app/presentation/widgets/home/body_places_widget.dart';


class CardPlaceWidget extends StatefulWidget {

  final Places places;
  const CardPlaceWidget({super.key, required this.places});

  @override
  State<CardPlaceWidget> createState() => _CardPlaceWidgetState();
}

class _CardPlaceWidgetState extends State<CardPlaceWidget> {

  Color _color =  Color(0xFF99C1B9);
  late bool favorite = false;
  _clickFavorite(){
    // print(favorite);
    if (favorite == true) {
     print(favorite = false);
    }else if (favorite == false) {
    favorite = true;
    }
  }



  @override
  Widget build(BuildContext context) {

    final func = FavoriteFun.of(context);

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
              child: FadeInImage(
                placeholder:const AssetImage('assets/gifs/loadingImage.gif'), 
                image: AssetImage(widget.places.url,),
                fit: BoxFit.fill,
                )
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
                    Text(widget.places.place, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),maxLines: 1, overflow: TextOverflow.ellipsis, ),
                    const SizedBox(height: 5,),
                    Row(children: [
                      const FaIcon(FontAwesomeIcons.locationDot, color: Color(0xFF5465ff), size: 15,),
                      const SizedBox(width: 5,),
                      Text(widget.places.location, style: const TextStyle(color: Color(0xFFa5a5a5)),)
                    ],)
                  ],
                ),
              ),
            ),
          ),

     

          Positioned(right: 0,child: CurveWidget(painter: BorderPaint()),),
          Positioned(right: 0, child: FavoriteFun(
            isActive: widget.places.isFavorite,
            child: TextButton(
              onPressed:() {
                setState(() {
                  _clickFavorite();
                });
              },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: CircleBorder()
                ), 
              child: Icon(Icons.favorite, color:(favorite) ? Colors.red : _color)
              ),
          ),
          )
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
    paint.color = Color(0xFFFAFAFA);
    // paint.color = Color(0xFF523737);
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


