import 'package:coffee_apps/colorPallete.dart';
import 'package:coffee_apps/screens/ourAboutScreen.dart';
import 'package:coffee_apps/screens/ourCoffeesScreen.dart';
import 'package:coffee_apps/screens/ourDosesScreen.dart';
import 'package:coffee_apps/screens/ourEffectScreen.dart';
import 'package:flutter/material.dart';
import 'package:coffee_apps/pop_up.dart';
import 'package:coffee_apps/screens/manfaatScreen.dart';
import 'package:coffee_apps/screens/efekScreen.dart';
import 'package:coffee_apps/screens/dosisScreen.dart';
import 'package:coffee_apps/screens/nutrisiScreen.dart';
import 'package:coffee_apps/widgets/category_card.dart';

import 'datasourcex.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      appBar: AppBar(backgroundColor: textGreen,
      actions: <Widget>[
          IconButton(
              icon: Icon(Theme.of(context).brightness == Brightness.dark
                  ? Icons.lightbulb_outline
                  : Icons.highlight),
              onPressed: () {
                popupDialogue(context);
              })
        ],
        centerTitle: false,
        title: Text(
          'Coffee', 
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .94,
            decoration: BoxDecoration(
              color: Color(0xffB98C53),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    "Menu Coffee",
                    style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .73,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Manfaat",
                          svgSrc: "assets/icons/manfaat.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return FAQPage1();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Nutrisi",
                          svgSrc: "assets/icons/nutrisi.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return FAQPage2();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Efek",
                          svgSrc: "assets/icons/efek.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return FAQPage3();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Dosis",
                          svgSrc: "assets/icons/dosis.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return FAQPage4();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 95,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    color: textGreen,
                    child: Text(
                      DataSourcex.quote,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 35),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

