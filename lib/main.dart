import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/contoller/bottombarcontroller/controller.dart';
import 'package:shop_app/utils/bottombar.dart';
import 'package:shop_app/view/Home/HomePage.dart';
import 'package:shop_app/view/splsh/splashScreen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => BottomBarContoller(),)
    ],child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
        '/' : (context)=>SplashScreen(),

        '/bar' : (context)=>BottomBar(),
    },
    );
  }
}
