

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category {

  final String name;
  final IconData icon;
  final bool enabled;

  Category({
  required this.name, 
  required this.icon, 
  required this.enabled
  });
  
}

final categories = <Category>[

  Category(
    name: 'Beach', 
    icon: FontAwesomeIcons.umbrellaBeach, 
    enabled: true,
    ),
  Category(
    name: 'Mountain', 
    icon: FontAwesomeIcons.mountain, 
    enabled: true,
    ),
  Category(
    name: 'Camp', 
    icon: FontAwesomeIcons.tent, 
    enabled: true,
    ),
];