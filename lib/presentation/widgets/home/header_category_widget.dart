import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/infraestructure/models/category_model.dart';

class HeaderCategoryWidget extends StatelessWidget {
   
  const HeaderCategoryWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Colors.indigo,
      alignment: Alignment.center,
      child:Row(
        children: List.generate(categories.length, 
        (index){
          final category = categories[index];
          return _ButtonCategory(category: category);
        }
        ),
      )
    );
  }
}


class _ButtonCategory extends StatelessWidget {
  
  final Category category;
  const _ButtonCategory({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _Decoration(),
      child:Row(
        children: [
          Icon(category.icon),
          Text(category.name)
        ],
      ),
    );
  }

  BoxDecoration _Decoration() => BoxDecoration(
    
  );
}

