import 'package:coffee_apps/colorPallete.dart';
import 'package:flutter/material.dart';
import 'package:coffee_apps/datasource4.dart';

import '../pop_up.dart';

class FAQPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dosis Harian'),
        backgroundColor: textGreen,
      ),
      body: ListView.builder(
          itemCount: DataSource4.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                DataSource4.questionAnswers[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold, color: textGreen),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(DataSource4.questionAnswers[index]['answer'], style: TextStyle(fontWeight: FontWeight.bold, color: textGreen),),
                )
              ],
            );
          }),
    );
  }
}
