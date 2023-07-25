import 'package:flutter/material.dart';

class FavoriteFun extends InheritedWidget{

  // GET/SET values for inclued functions
  final bool isActive;

  FavoriteFun({super.key,required this.isActive, required Widget child}):super(child: child);

  @override
  bool updateShouldNotify(FavoriteFun oldWidget) {
  print(isActive); 
  print(oldWidget.isActive);
    return true;
  }

  static FavoriteFun of(BuildContext context){
    final provider = context.dependOnInheritedWidgetOfExactType<FavoriteFun>();
    assert( provider !=null, 'No available');
    return provider!;
  }

}