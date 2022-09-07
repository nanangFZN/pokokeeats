import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokokeeats/r.dart';
import 'package:pokokeeats/views/login.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds:3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Center(
            child: Container(
              width:width*0.8,
              height:height*0.4,
              decoration:BoxDecoration(
                image: DecorationImage(image: AssetImage(R.images.icSplash))
              )
            ),
          ),
          Text("Pokoke Eats",style:GoogleFonts.nunito(
            fontSize:28,
            fontWeight: FontWeight.bold,
            color:R.colors.primary
          ))
        ]
      ),
    );
  }
}