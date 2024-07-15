import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/contoller/bottombarcontroller/controller.dart';
import 'package:shop_app/view/Home/HomePage.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeScreen(),
      Scaffold(),
      Scaffold(),
      Scaffold(),
      Scaffold(),
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<BottomBarContoller>(context, listen: false).setbottomindex(0);
        },
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
        child: Icon(CupertinoIcons.house_fill, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Consumer<BottomBarContoller>(
          builder: (context, controller, child) {
            return Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    controller.setbottomindex(1);
                  },
                  icon: Icon(
                    CupertinoIcons.rectangle_grid_2x2,
                    color: controller.bottomindex == 1 ? Colors.blueAccent : Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.setbottomindex(2);
                  },
                  icon: Icon(
                    CupertinoIcons.heart,
                    color: controller.bottomindex == 2 ? Colors.blueAccent : Colors.grey,
                  ),
                ),
                SizedBox(width: 15),
                IconButton(
                  onPressed: () {
                    controller.setbottomindex(3);
                  },
                  icon: Icon(
                    CupertinoIcons.shopping_cart,
                    color: controller.bottomindex == 3 ? Colors.blueAccent : Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.setbottomindex(4);
                  },
                  icon: Icon(
                    CupertinoIcons.person,
                    color: controller.bottomindex == 4 ? Colors.blueAccent : Colors.grey,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      body: Consumer<BottomBarContoller>(
        builder: (context, controller, child) {
          return screens[controller.bottomindex];
        },
      ),
    );
  }
}
