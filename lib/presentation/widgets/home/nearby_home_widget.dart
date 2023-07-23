import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearbyHomeWidget extends StatelessWidget {
  const NearbyHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      child:  Column(
        children: [
          const Row(
            children: [
              Text('Popular Destination',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
              Spacer(),
              Text('See all',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Color(0xFF2196f3)),)
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow:[ BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(3, 3),
                spreadRadius: 1,
                blurRadius: 7
              )]
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                    child: Image.network('https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg?cs=srgb&dl=pexels-fabian-wiktor-994605.jpg&fm=jpg', fit: BoxFit.fill,),
                  ),
                ),
                const SizedBox(width: 15,),
                const Column(
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
                ),
                const Spacer(),
                const Text('3,5Km', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)


              ],
            ),
            
          )

        ],
      ),
    );
  }
}
