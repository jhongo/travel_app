import 'package:flutter/material.dart';
import 'package:travel_app/infraestructure/models/places_model.dart';
import 'package:travel_app/presentation/widgets/home/body_cardplace_widget.dart';

class BodyPlacesWidget extends StatelessWidget {
   
  const BodyPlacesWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder:(context, index) {
          final itemPlaces = places[index];
          return FavoriteFun(
            isActive: false,
            child: CardPlaceWidget(places: itemPlaces,));
        },
        ),
    );
  }
}

class FavoriteFun extends InheritedWidget{

 final bool isActive;

  FavoriteFun({super.key,required this.isActive, required Widget child}):super(child: child);

  @override
  bool updateShouldNotify(FavoriteFun oldWidget){



    return true;

  }

  static FavoriteFun of(BuildContext context){
    final provider = context.dependOnInheritedWidgetOfExactType<FavoriteFun>();
    assert( provider !=null, 'No available');
    return provider!;
  }

}