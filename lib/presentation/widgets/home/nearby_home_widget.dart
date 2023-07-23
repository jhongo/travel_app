import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/presentation/widgets/home/nearby_header_widget.dart';
import 'package:travel_app/presentation/widgets/home/nearby_itemplace_widget.dart';

class NearbyHomeWidget extends StatelessWidget {
  const NearbyHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      child:const Column(
        children: [
          NearbyHeader(),
          NearbyItemPlace(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _ImagePlace(),
                SizedBox(width: 15,),
                _DataPlace(),
                Spacer(),
                Text('3,5Km', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)
              ],),
          ),
          
          ],
      ),
    );
  }
}

class _DataPlace extends StatelessWidget {
  const _DataPlace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text('Botok Beach', style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 20),maxLines: 1, overflow: TextOverflow.ellipsis, ),
         SizedBox(height: 5,),
        Row(
          children: [
           FaIcon(FontAwesomeIcons.locationDot, color: Color(0xFF5465ff), size: 15,),
           SizedBox(width: 5,),
          Text('Sragen, Indonesia',style: TextStyle(color: Color(0xFFa5a5a5)),)
        ],)
      ],
    );
  }
}

class _ImagePlace extends StatelessWidget {
  const _ImagePlace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(20),
      child: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20)),
        child: Image.network('https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg?cs=srgb&dl=pexels-fabian-wiktor-994605.jpg&fm=jpg', fit: BoxFit.fill,),
      ),
    );
  }
}
