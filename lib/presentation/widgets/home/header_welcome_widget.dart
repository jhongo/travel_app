import 'package:flutter/material.dart';

class WelcomeHeaderWidget extends StatelessWidget {
   
  const WelcomeHeaderWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi Bella,', style:TextStyle(color: Color(0xFFbc6c25), fontSize: 18),),
              Text('Traveling Today? ', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600 ),)
            ],
          ),
          Spacer(),
          CircleAvatar(
            maxRadius: 30,
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'),
          )
        ],
      ),
    );
  }
}