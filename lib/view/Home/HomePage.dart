import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/model/DataModel.dart';
import 'package:shop_app/utils/product.dart';
import 'package:shop_app/view/Home/Item.dart';
import 'package:shop_app/view/Home/componets/category.dart';
import 'package:shop_app/view/Second/SecondScreen.dart'; // Adjust your import path

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.search,color:Colors.blue,),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.shopping_cart,color:Colors.blue),
            onPressed: () {},
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: [


        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 30,
              childAspectRatio: 0.65,
            ),
            itemBuilder: (context, index) => buildItem(
              product: products[index],
              press: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondScreen(
                    product: products[index],
                  ),
                ));
              },
            ),
          ),
        ))
      ]),
    );
  }
}
