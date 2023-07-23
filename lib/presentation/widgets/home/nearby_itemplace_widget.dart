import 'package:flutter/material.dart';

class NearbyItemPlace extends StatelessWidget {
  final Widget child;
  const NearbyItemPlace({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: child,
    );
  }
}