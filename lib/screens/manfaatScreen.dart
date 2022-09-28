import 'package:coffee_apps/colorPallete.dart';
import 'package:flutter/material.dart';
import 'package:coffee_apps/datasource1.dart';

import '../pop_up.dart';

class FAQPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manfaat Kopi'),backgroundColor: textGreen,),
      body: ListView.builder(
          itemCount: DataSource1.questionAnswers.length,
          itemBuilder: (context,index){
            return ExpansionTile(title: Text(DataSource1.questionAnswers[index]['question'],style: TextStyle(fontWeight: FontWeight.bold, color: textGreen),),children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(DataSource1.questionAnswers[index]['answer'],style: TextStyle(fontWeight: FontWeight.bold, color: textGreen),),
              )
            ],
            );
          }),
    );
  }
}
