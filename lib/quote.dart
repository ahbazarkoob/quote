// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:quote/inspiration.dart';
var devH, devW;
class Quote extends StatelessWidget {
  const Quote({super.key});

  @override
  Widget build(BuildContext context) {
    devH= MediaQuery.of(context).size.height;
    devW= MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
      child: Container(
        child: Stack(
              children: [
                Positioned(left: 30,top: 50,
                  child: Text('Quote Of the Day',style: TextStyle(fontSize:45,fontWeight: FontWeight.bold,color: Color(0xFF6E2BDC),))),
                Positioned(
                  left: 25,
                  top: 200,
                  child: Container(
                    width: 350,
                    height: 360,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xFF6E2BDC),
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 76,
                  top: 190,
                  child: Container(
                    width: 45,
                    height: 11,
                    decoration: BoxDecoration(color: Colors.white),),
                  ),
                Positioned(
                  left: 100,
                  top: 180,
                  child: Transform(transform:Matrix4.identity()..translate(23.0)..rotateY(3.14) ,
                  child: Icon(Icons.format_quote_outlined,size: 50,color: Color(0xFF6E2BDC),))),
                Positioned(
                  left: 291,
                  top: 556,
                  child: Container(
                    width: 45,
                    height: 11,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ),
              Positioned(
                left: 289,
                top: 582,
                child: Transform(transform:Matrix4.identity()..rotateX(3.14) ,
                child: Icon(Icons.format_quote_outlined,size: 50,color: Color(0xFF6E2BDC),))),
              Positioned(
                left: 60,
                top: 230,
                child:Container(
                  width: 290,
                  height: 290,
                  child: Inspiration(),
                ) )
              ]
        ),
      )
    ));
  }
}

