import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffee_apps/colorPallete.dart';
import 'package:flutter/scheduler.dart';

class productDetailsScreen2 extends StatelessWidget {
  productDetailsScreen2(this.imgPath, this.coffeeName, this.price, this.desc, this.ba1, this.ba2, this.ba3, this.ba4, this.k1, this.k2, this.k1a, this.k1b, this.k1c, this.k1d, this.k2a, this.k2b, this.k2c, this.k2d);
  String imgPath;
  String coffeeName;
  String price;
  String desc;
  String ba1;
  String ba2;
  String ba3;
  String ba4;
  String k1;
  String k2;
  String k1a;
  String k1b;
  String k1c;
  String k1d;
  String k2a;
  String k2b;
  String k2c;
  String k2d;
  ColorPallete _colorPallete = new ColorPallete();

  @override
  Widget build(BuildContext context) {
    timeDilation = 3;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            color: _colorPallete.primaryColor,
          ),
          Positioned(
            top: 25,
            left: 10,
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                CupertinoIcons.back,
                color: Colors.white,      
                size: 40,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffeeName,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  '180 ml',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: screenHeight/3+20,
            child: Container(
              padding: EdgeInsets.only(top: 205, left: 25, right: 25),
              width: screenWidth,
              height: screenHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text(
                    k1,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: _colorPallete.textGrey,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                  k1a,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: _colorPallete.textGrey
                  ),
                  ),
                  Text(
                  k1b,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: _colorPallete.textGrey
                  ),
                  ),
                  Text(
                  k1c,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: _colorPallete.textGrey
                  ),
                  ),
                  Text(
                  k1d,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: _colorPallete.textGrey
                  ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    k2,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: _colorPallete.textGrey,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                  k2a,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: _colorPallete.textGrey
                  ),
                  ),
                  Text(
                  k2b,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: _colorPallete.textGrey
                  ),
                  ),
                  Text(
                  k2c,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: _colorPallete.textGrey
                  ),
                  ),
                  Text(
                  k2d,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: _colorPallete.textGrey
                  ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 470,
            left: 167,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    'Effect',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: _colorPallete.textGrey,
                      fontSize: 20,
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: Hero(
              tag: imgPath, 
              child: Image(
                height: 330,
                image: AssetImage(imgPath),
              ),
            ),
          ),
        ],
      ),
    );
  }
}