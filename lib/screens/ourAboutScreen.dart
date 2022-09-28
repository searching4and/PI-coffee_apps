import 'dart:ui';

import 'package:coffee_apps/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:coffee_apps/colorPallete.dart';

import 'productDetailsScreen.dart';


class ourAboutScreen   extends StatelessWidget {

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
                    'About',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: _colorPallete.secondaryColor,
                  ),
                 ),
                 Text(
                      'Aplikasi ini dibuat untuk memberi informasi seputar kopi ke khalayak masyarakat umum atau orang yang masih awam mengenai kopi. Di dalam aplikasi ini memuat mengenai maftaat, sumber, dosis harian, dan efek yang ditimbulkan bila kelebihan ataupun kekurangan kopi. Dengan demikian tubuh dapat asupan kopi yang tercukupi.',
                      textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      color: _colorPallete.textGreen,
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
                      '',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: _colorPallete.secondaryColor,
                    ),
                   ),
                   Text(
                      '',
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
