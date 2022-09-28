import 'package:coffee_apps/colorPallete.dart';
import 'package:flutter/material.dart';
import 'package:coffee_apps/datasource3.dart';

import '../pop_up.dart';

class FAQPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Efek Samping'),
        backgroundColor: textGreen,
        ),
      body: ListView.builder(
          itemCount: DataSource3.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                DataSource3.questionAnswers[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold, color: textGreen),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(DataSource3.questionAnswers[index]['answer'], style: TextStyle(fontWeight: FontWeight.bold, color: textGreen),),
                
                )
              ],
            );
          }),
    );
  }
}
