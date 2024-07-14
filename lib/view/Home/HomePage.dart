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
        title: Text('Shoes',style: TextStyle(color: Colors.white,letterSpacing: 2,fontWeight: FontWeight.bold),),
        backgroundColor: Color(0xff1381c0),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.search,color: Colors.white,),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(CupertinoIcons.shopping_cart,color: Colors.white,),
            onPressed: () {},
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

        SizedBox(height: 10,),
        Categories(),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
