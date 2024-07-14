import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/model/DataModel.dart';
import 'package:shop_app/utils/product.dart';
import 'package:shop_app/view/Second/componets/color.dart';

class SecondScreen extends StatefulWidget {
  final Product product;
  const SecondScreen({super.key, required this.product});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: widget.product.color,
      appBar: AppBar(
        backgroundColor: widget.product.color,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(CupertinoIcons.back,color: Colors.white,),),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.search,color:Colors.white,),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(CupertinoIcons.shopping_cart,color:Colors.white),
            onPressed: () {},
          ),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: height/3),
                  padding: EdgeInsets.only(top: 120,left: 20),
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Color'),
                              Row(
                                children: [
                                  buildcoloer(color: Color(0xff356C95),isSelected: true,),
                                  buildcoloer(color: Color(0xfff8c078),),
                                  buildcoloer(color: Color(0xffA29B9B)),
                                ],
                              )
                            ],
                          ),
                          SizedBox(width: 100,),
                          RichText(text: TextSpan(
                            style: TextStyle(color: Colors.grey),
                            children: [
                              TextSpan(text: 'Size\n'),
                              TextSpan(text: '${widget.product.size}cm',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold))
                            ]
                          ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(widget.product.description,style: TextStyle(color: Colors.black,height: 1.5),),
                      ),
                      Row(
                        children: [
                         Container(
                           height: 32,
                           width: 40,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                             border: Border.all(color: Colors.grey.shade600)
                           ),
                           child: InkWell(
                             onTap: () {
                             setState(() {
                              if(itemcount>0)
                                {
                                  itemcount--;
                                }
                             });
                             },
                             child: Icon(CupertinoIcons.minus,size: 20,),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 10),
                           child:  Text(itemcount.toString().padLeft(2,"0"),
                             style: TextStyle(color: Colors.black,fontSize: 20),),
                         ),
                         Container(
                           height: 32,
                           width: 40,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                             border: Border.all(color: Colors.grey)
                           ),
                           child: InkWell(
                             onTap: () {
                              setState(() {
                                itemcount++;
                              });
                             },
                             child: Icon(CupertinoIcons.plus,size: 20,),
                           ),
                         ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffff6464),
                              ),
                              child: Icon(CupertinoIcons.heart_fill,color: Colors.white,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50,),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff3b81ae)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(CupertinoIcons.shopping_cart,color: Color(0xff3b81ae),),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                                color: widget.product.color,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('Buy Now',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Aeristo hand bad',style: TextStyle(color: Colors.white),),
                      Text(widget.product.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),

                      Row(
                        children: [
                          RichText(text: TextSpan(
                              children: [
                                TextSpan(text: 'Price\n'),
                                TextSpan(text: '\$${widget.product.price}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 2)),
                              ]
                          )),
                          Expanded(child: Hero(
                              tag: '${widget.product.id}',
                              child: Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: SizedBox(
                                    height: 250,
                                    child: Image.asset(widget.product.image,fit: BoxFit.fill,)),
                              ))),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )

          ],
        ),
      ),

    );
  }
}

int itemcount=1;
