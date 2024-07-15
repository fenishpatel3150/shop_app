import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/view/Home/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1381c0),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 700,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/image/splsh.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.pushReplacementNamed(context,'/bar');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 350, left: 15),
                    child: Container(
                      height: 55,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Center(child: Hero(
                          tag: 'hero',
                          child: Text('Get Start',style: TextStyle(letterSpacing: 2,color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),))),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

