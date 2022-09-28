import 'package:coffee_apps/homepage.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ButtonStyle _style = TextButton.styleFrom(
      backgroundColor: Color(0xffB98C53),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      )
    );
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.height,
            width: size.height,
            child: Image.asset("images/bg.jpg",fit: BoxFit.cover),
          ),
          Container(
            padding: EdgeInsets.all(40),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF291803),
                  Color(0xFF291803).withOpacity(.1)
                ],
              ),
            ),
            child: Image.asset('images/coffee.png'),
          ),
          Positioned(
            top: 70,
            child: Text(
              'ITS GREAT DAY FOR',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xffB98C53),
          ),
          ),
          ),
          Positioned(
            top: 95,
            child: Text(
              'Coffee',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            child: SizedBox(
              height: 60,
              width: 120,
              child: TextButton(
                style: _style,
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),), 
                child: Text(
                  'Get In',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),  
                ),
              ),
          )
          )
        ],
      ),
    );
  }
}