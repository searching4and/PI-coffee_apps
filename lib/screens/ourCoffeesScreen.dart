import 'dart:ui';

import 'package:coffee_apps/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:coffee_apps/colorPallete.dart';

import 'productDetailsScreen.dart';


class ourCoffeesScreen   extends StatelessWidget {

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
                Container(
                  margin: EdgeInsets.only(left: 15, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text(
                        'Find the best\ncoffee for you',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: _colorPallete.secondaryColor,
                      ),
                     ),
                     SizedBox(height: 30,),
                     Text(
                        'Bold or lightyly sweetened, black or creamy, find an organic brew that\'s perfect for you',
                      style: TextStyle(
                        fontSize: 20,
                        color: _colorPallete.textGreen,
                      ),
                     ),
                     SizedBox(height: 60,),
                     Text(
                        'Our Products',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: _colorPallete.secondaryColor,
                      ),
                     ),
                     SizedBox(height: 20,),
                     SingleChildScrollView(
                       controller: _scrollController,
                       physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                       scrollDirection: Axis.horizontal,
                       child: Row(
                         children: [
                           buildProductWidget(context,'images/espresso.png',0xFFAF6300, 'Espresso','Italia','1884', 'Minumlah kopi espresso ini, bagus diminum diatas jam sembilan pagi. Karena kortisol hormonal pada tutupnya tetap stabil. Jadi Anda akan menghindari stres di pagi hari.', 'Jumlah per 1 gelas\n5g', 'Kalori (kcal)\n0,43g', 'Jumlah Lemak\n0g', 'Natrium\n0,28g', 'Kalium\n5g', 'Jumlah Karbohidrat\n0,43g', 'Protein\n0g', 'Kafein\n0,28g'),
                           buildProductWidget(context,'images/latte.png',0xFFFF9100, 'Latté','Italia','1950', 'Kopi ini dapat meningkatkan metabolisme dan mendorong produksi bahan kimia otaknya dari serotonin. Jadi itu tidak buruk, jika Anda memilih kopi latte untuk minum setiap hari.', 'Kalori\n6g', 'Lemak\n2,75g', 'Karbohidrat\n6,18g', 'Protein\n4,41g', 'Kalori\n5g', 'Lemak\n0,43g', 'Karbohidrat\n0g', 'Protein\n0,28g'),
                           buildProductWidget(context,'images/coldbrew.png',0xFF744100, 'Cold Brew','Guatemala','1964', 'Jenis keasaman kopi lebih rendah hingga 70% dari kopi biasa. Jadi minum kopi Anda bisa tetap bugar dan dapat mencegah nyeri otot.', 'Kalori\n5g', 'Lemak\n0,43g', 'Karbohidrat\n0g', 'Protein\n0,28g', 'Kalori\n5g', 'Lemak\n0,43g', 'Karbohidrat\n0g', 'Protein\n0,28g'),
                           buildProductWidget(context,'images/americano.png',0xff032b43, 'Americano','Italia','1940', 'Kopi Amerika ini mengandung 90 kalori. Hak untuk menikmati setiap hari dan menjadi penguat suasana hati Anda.', 'Kalori\n5g', 'Lemak\n0g', 'Karbohidrat\n0g', 'Protein\n0g', 'Kalori\n5g', 'Lemak\n0,43g', 'Karbohidrat\n0g', 'Protein\n0,28g'),
                           buildProductWidget(context,'images/whitecoffee.png',0xff136f63, 'White Coffee','Indonesia','1999', 'Selain itu terasa enak, kopi ini dapat mencegah diabetes, parkinson, dan menjaga fungsi kognitif, karena kopi ini mengandung asam quinic dan vitamin B3.', 'Kalori\n15g', 'Lemak\n0g', 'Karbohidrat\n0g', 'Protein\n0g', 'Kalori\n5g', 'Lemak\n0,43g', 'Karbohidrat\n0g', 'Protein\n0,28g'),
                           buildProductWidget(context,'images/arabicacoffee.png',0xffd00000, 'Arabica Coffee','Ethiopia','1200', 'Arabica Coffee memiliki banyak bervariasi, tergantung pada tempat dan tanah penanaman kopi, Anda dapat menemukan kopi Toraja dan lainnya, ada perbedaan dalam bahasa Arabika dan kopi lainnya.', 'Kalori\n130g', 'Lemak\n2g', 'Karbohidrat\n23g', 'Protein\n4g', 'Kalori\n5g', 'Lemak\n0,43g', 'Karbohidrat\n0g', 'Protein\n0,28g'),
                           buildProductWidget(context,'images/kopitubruk.png',0xffffba08, 'Kopi Tubruk','Timur Tengah','1600', 'Kopi tubruk ini mengandung asam klorogenik, fitoestrogen, dan favonoid yang dapat mencegah batu empedu, kerusakan saraf, dan melindungi kesehatan gigi.', 'Kalori\n30g', 'Lemak\n1g', 'Karbohidrat\n4g', 'Protein\n1g', 'Kalori\n5g', 'Lemak\n0,43g', 'Karbohidrat\n0g', 'Protein\n0,28g'),
                           buildProductWidget(context,'images/cappucino.png',0xff3f88c5, 'Cappucino','Italia','1700', 'Kopi dicampur dengan susu dapat meningkatkan stamina, menjaga kesehatan mulut, dan mencegah kanker.', 'Kalori\n2g', 'Lemak\n0.05g', 'Karbohidrat\n0g', 'Protein\n0,28g', 'Kalori\n5g', 'Lemak\n0,43g', 'Karbohidrat\n0g', 'Protein\n0,28g'),
                           buildProductWidget(context,'images/luwak.png',0xff032b43, 'Kopi Luwak','Indonesia','1999', 'Kopi difermentasi dalam perut hewan luwak ini, dapat mencegah kanker mulut, kulit, dan bahkan mencegah kerusakan sel.', 'Kalori\n56g', 'Lemak\n2,99g', 'Karbohidrat\n4,36g', 'Protein\n3,06g', 'Kalori\n5g', 'Lemak\n0,43g', 'Karbohidrat\n0g', 'Protein\n0,28g'),
                           buildProductWidget(context,'images/affogato.png',0xff136f63, 'Affogato','Italia','1884', 'Kombinasi kopi dengan es krim ini dapat meningkatkan booster suasana hati Anda saat mengasyikkan dengan teman-teman Anda atau juga dapat menikmati saya di rumah.', 'Kalori\n197g', 'Lemak\n4,57g', 'Karbohidrat\n33,49g', 'Protein\n5,47g', 'Kalori\n5g', 'Lemak\n0,43g', 'Karbohidrat\n0g', 'Protein\n0,28g'),
                           buildProductWidget(context,'images/machiato.png',0xffd00000, 'Machiato','Italia','1980', 'Jika Anda membutuhkan inspirasi, tidak ada salahnya mencoba kopi ini. Macchiato dapat membuat pikiran lebih tenang, sehingga ide atau inspirasi otomatis datang dengan sendirinya.', 'Kalori\n240g', 'Lemak\n10g', 'Karbohidrat\n30g', 'Protein\n10g', 'Kalori\n5g', 'Lemak\n0,43g', 'Karbohidrat\n0g', 'Protein\n0,28g'),
                         ],
                       ),
                     )
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  buildProductWidget(BuildContext context, String imgPath, int cardColor, String title1, String title2, String price, String desc, String ba1, String ba2, String ba3, String ba4, String ba5, String ba6, String ba7, String ba8){
    return Wrap(
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return productDetailsScreen(imgPath, title1, price, desc, ba1, ba2, ba3, ba4, ba5, ba6, ba7, ba8);
            })
            );
          },
          child: Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Color(0xffA96F4F).withOpacity(1),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Hero(
                    tag: imgPath, 
                    child: Image(
                      width: 130,
                      height: 150,
                      image: AssetImage(imgPath),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      title1,
                      style: TextStyle(
                        color: _colorPallete.secondaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      title2,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      price,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}