import 'package:flutter/material.dart';

// class FavoriteFun extends InheritedWidget{

//   final bool isActive;

//   FavoriteFun({super.key,required this.isActive, required Widget child}):super(child: child);

//   @override
//   bool updateShouldNotify(FavoriteFun oldWidget){

//     return true;
//   }

//   static FavoriteFun of(BuildContext context){
//     final provider = context.dependOnInheritedWidgetOfExactType<FavoriteFun>();
//     assert( provider !=null, 'No available');
//     return provider!;
//   }

// }