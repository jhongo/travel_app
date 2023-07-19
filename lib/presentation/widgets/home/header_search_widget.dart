import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderSearchWidget extends StatelessWidget {
   
  const HeaderSearchWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(),
      child: TextFormField(

        cursorColor: Colors.black,
        decoration:InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: 'Search destination',
          filled: true,
          fillColor:const Color(0xFFe5e5e5),
          iconColor: Colors.black,
          prefixIcon:const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.magnifyingGlass,color: Colors.black,),
            ]),
          enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide:const BorderSide(
            color: Color(0xFFe5e5e5),
            )
          ),
          focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide:const BorderSide(
            color: Color(0xFFe5e5e5),
            )
          ),
      ),)
    );
  }
}