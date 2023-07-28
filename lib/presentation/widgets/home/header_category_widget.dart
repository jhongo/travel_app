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


class _ButtonCategory extends StatefulWidget {
  
  final Category category;
  const _ButtonCategory({super.key, required this.category});

  @override
  State<_ButtonCategory> createState() => _ButtonCategoryState();
}

class _ButtonCategoryState extends State<_ButtonCategory> {

  String opcCategory = 'Beach';

  _selectCategory(){
      setState(() {
        opcCategory = widget.category.name;
        });
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selectCategory();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: _Decoration(),
        child:Row(
          children: [
            Icon(widget.category.icon, color: (opcCategory != widget.category.name)? Colors.black : Colors.white, ),
            SizedBox(width: 10,),
            Text(widget.category.name, style: TextStyle(color: (opcCategory != widget.category.name)? Colors.black : Colors.white,),)
          ],
        ),
      ),
    );
  }

  BoxDecoration _Decoration() => BoxDecoration(
    color: (opcCategory != widget.category.name)? Color(0xFFe9ecef) : Color(0xFF3a86ff),
    borderRadius: BorderRadius.circular(100)
  );
}


class CategorySelect extends InheritedWidget {

  final String category;

  const CategorySelect({super.key, required this.category, required Widget child}):super(child: child) ; 


  @override
  bool updateShouldNotify(CategorySelect oldWidget) {
    print('Hello $category');
    print('Hello old ${oldWidget.category}');
  return true;
  }


  static CategorySelect of(BuildContext context){
    final provider = context.dependOnInheritedWidgetOfExactType<CategorySelect>();
    assert( provider !=null, 'No available');
    return provider!;
  }
  
}