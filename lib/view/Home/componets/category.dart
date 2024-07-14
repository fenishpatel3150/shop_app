import 'package:flutter/material.dart';
import 'package:shop_app/utils/categorieslist.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 30,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) =>  buildCategories(index),),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: ()
      {
        setState(() {
          selectedIndex=index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],style: TextStyle(color: selectedIndex== index?Color(0xff1381c0):Colors.grey,fontWeight: FontWeight.bold),),
            Container(
              margin: EdgeInsets.only(top: 4),
              height: 2,
              width: 20,
              color: selectedIndex== index?Color(0xff1381c0):Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
