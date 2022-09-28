import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffee_apps/colorPallete.dart';
import 'package:flutter/scheduler.dart';

class productDetailsScreen extends StatelessWidget {
  productDetailsScreen(this.imgPath, this.coffeeName, this.price, this.desc, this.ba1, this.ba2, this.ba3, this.ba4, this.ba5, this.ba6, this.ba7, this.ba8);
  String imgPath;
  String coffeeName;
  String price;
  String desc;
  String ba1;
  String ba2;
  String ba3;
  String ba4;
  String ba5;
  String ba6;
  String ba7;
  String ba8;
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
              padding: EdgeInsets.only(top: 185, left: 25, right: 25),
              width: screenWidth,
              height: screenHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(desc,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: _colorPallete.textGrey
                  ),
                  ),
                  SizedBox(height: 27,),
                  Text(
                    'Nutritions',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: _colorPallete.textGrey,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        ba1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: _colorPallete.textGrey,
                        ),
                      ),
                      SizedBox(width: 30,),
                      Text(
                        ba2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: _colorPallete.textGrey,
                        ),
                      ),                      
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        ba1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: _colorPallete.textGrey,
                        ),
                      ),
                      SizedBox(width: 30,),
                      Text(
                        ba2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: _colorPallete.textGrey,
                        ),
                      ),                      
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        ba1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: _colorPallete.textGrey,
                        ),
                      ),
                      SizedBox(width: 30,),
                      Text(
                        ba2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: _colorPallete.textGrey,
                        ),
                      ),                      
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        ba1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: _colorPallete.textGrey,
                        ),
                      ),
                      SizedBox(width: 30,),
                      Text(
                        ba2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: _colorPallete.textGrey,
                        ),
                      ),                      
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 140,
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