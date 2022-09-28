import 'dart:ui';

import 'package:coffee_apps/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:coffee_apps/colorPallete.dart';

import 'productDetailsScreen.dart';


class ourDosesScreen   extends StatelessWidget {

  ColorPallete _colorPallete = new ColorPallete();
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
        title: Text('Makanan Yang Disarankan'),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(
              icon: Icon(Theme.of(context).brightness == Brightness.dark
                  ? Icons.lightbulb_outline
                  : Icons.highlight),
              onPressed: () {
                popupDialogue(context);
              })
        ],
      ),
        body: SingleChildScrollView(
      controller: _scrollController,
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            SizedBox(height: 50,),
            Container(
              margin: EdgeInsets.only(left: 15, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text(
                    'Dosis Harian',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: _colorPallete.secondaryColor,
                  ),
                 ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text(
                      'umur 18 tahun ke atas',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: _colorPallete.secondaryColor,
                    ),
                   ),
                   Text(
                      '2-4 secangkir kopi (400 mg perhari)',
                    style: TextStyle(
                      fontSize: 15,
                      color: _colorPallete.textGreen,
                    ),
                   ),
                   SizedBox(height: 20,),
                   Text(
                      'ibu hamil',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: _colorPallete.secondaryColor,
                    ),
                   ),
                   Text(
                      '1-2 secangkir kopi (200 mg perhari)',
                    style: TextStyle(
                      fontSize: 15,
                      color: _colorPallete.textGreen,
                    ),
                   ),
                   SizedBox(height: 20,),
                   Text(
                      'umur 4-6 tahun',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: _colorPallete.secondaryColor,
                    ),
                   ),
                   Text(
                      '45mg perhari',
                    style: TextStyle(
                      fontSize: 15,
                      color: _colorPallete.textGreen,
                    ),
                   ),
                   SizedBox(height: 20,),
                   Text(
                      'umur 7-9 tahun',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: _colorPallete.secondaryColor,
                    ),
                   ),
                   Text(
                      '62,5mg perhari',
                    style: TextStyle(
                      fontSize: 15,
                      color: _colorPallete.textGreen,
                    ),
                   ),
                   SizedBox(height: 20,),
                   Text(
                      'umur 10-12 tahun',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: _colorPallete.secondaryColor,
                    ),
                   ),
                   Text(
                      '85mg perhari',
                    style: TextStyle(
                      fontSize: 15,
                      color: _colorPallete.textGreen,
                    ),
                   ),
                  ],
                ),
            ),
        ],
      ),
    )));
  }

  }
