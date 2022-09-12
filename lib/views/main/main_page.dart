import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokokeeats/r.dart';
import 'package:pokokeeats/views/main/Cart/cart.dart';
import 'package:pokokeeats/views/main/Home/home.dart';
import 'package:pokokeeats/views/main/Menu/menu.dart';
import 'package:pokokeeats/views/main/Profile/profile.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pc =PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: 
            Container(
              width:width*0.2,
              decoration:BoxDecoration(
                image: DecorationImage(image: AssetImage(R.images.icSplash),fit:BoxFit.fill)
              )
            ),
         title: Text("Pokoke \nEats",style:TextStyle(color:R.colors.primary),
         ),   
          
      ),
      bottomNavigationBar: bottomNavigationBar(height),
      body: PageView(
        controller: _pc,
         physics: NeverScrollableScrollPhysics(),
         children:[
            HomePage(),
            MenuPage(),
            CartPage(),
            ProfilePage()
         ]
      ),

    );
  }

  BottomAppBar bottomNavigationBar(double height) {
    return BottomAppBar(
      child:  Container(
        height:height*0.075,
        color:Colors.white,
        child:Row(
          crossAxisAlignment:CrossAxisAlignment.center,
          children:[
            Expanded(
              child:Material(
                child:InkWell(
                  onTap: (){
                    index = 0;
                    _pc.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.bounceInOut);
                  },
                child: Image.asset(R.images.icSplash),
                )
              )
            ),
            Expanded(
              child:Material(
                child:InkWell(
                  onTap: (){
                    index = 1;
                    _pc.animateToPage(index, duration: Duration(milliseconds:300 ), curve: Curves.bounceInOut);
                  },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.menu_book,color:R.colors.primary),
                    Text("Menu",style:TextStyle(color:R.colors.primary))
                  ]
                ),
                )
              )
            ),
            Expanded(
              child:Material(
                child:InkWell(
                  onTap: (){
                    index = 2;
                    _pc.animateToPage(index, duration: Duration(milliseconds: 300 ), curve: Curves.bounceInOut);
                  },
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.card_travel,color:R.colors.primary),
                    Text("Order",style:TextStyle(color:R.colors.primary))
                  ]
                ),
                )
              )
            ),
             Expanded(
              child:Material(
                child:InkWell(
                  onTap: (){
                    index = 3;
                    _pc.animateToPage(index, duration: Duration(milliseconds: 300 ), curve: Curves.bounceInOut);
                  },
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.person,color:R.colors.primary),
                    Text("Profile",style:TextStyle(color:R.colors.primary))
                  ]
                ),
                )
              )
            ),
          ]
        )
      ),
    );
  }
}