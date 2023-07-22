import 'package:flutter/material.dart';
import 'package:travel_app/infraestructure/models/category_model.dart';

class HeaderCategoryWidget extends StatelessWidget {
   
  const HeaderCategoryWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      alignment: Alignment.center,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: _Decoration(),
      child:Row(
        children: [
          Icon(category.icon),
          SizedBox(width: 10,),
          Text(category.name)
        ],
      ),
    );
  }

  BoxDecoration _Decoration() => BoxDecoration(
    color: Color(0xFFe9ecef),
    borderRadius: BorderRadius.circular(100)
  );
}

