import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokokeeats/r.dart';
import 'package:pokokeeats/views/register.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:  Stack(
          children:[
             Container(
               decoration:BoxDecoration(
                image:DecorationImage(image:AssetImage(R.images.icBg),fit: BoxFit.fill)
               )
              ),
              Container(
                color:R.colors.primary.withOpacity(0.3)
              ),
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Enjoy Your Day \nWith Pokoke \nEats",style:GoogleFonts.nunito(
                          fontSize: 28,
                          fontWeight:FontWeight.bold,
                          color:Colors.white
                        )),
                      ),
                     Center(
                       child: Container(
                        width:width*0.9,
                        height:height*0.5,
                        decoration:BoxDecoration(
                          color:Colors.white.withOpacity(0.5),
                          borderRadius:BorderRadius.circular(15),   
                        ),
                        child:Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children:[
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("Sign In",
                              style: GoogleFonts.nunito(
                                fontSize:24,
                                fontWeight:FontWeight.bold,
                                color:R.colors.primary
                              ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left:width*0.1,bottom :5),
                              child: Text("Fullname",
                              style: GoogleFonts.nunito(
                                fontSize:14,
                                color:R.colors.primary
                              )
                              ),
                            ),
                            Center(
                              child: Container(
                                width:width*0.8,
                                height:height*0.1,
                                decoration:BoxDecoration(),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    fillColor:Colors.white,
                                    filled:true,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color:R.colors.primary),
                                      borderRadius:BorderRadius.circular(10)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:BorderRadius.circular(10)
                                    )
                                  ),
                                ),
                              ),
                            ),
                             Padding(
                              padding:  EdgeInsets.only(left:width*0.1,bottom :5),
                              child: Text("Fullname",
                              style: GoogleFonts.nunito(
                                fontSize:14,
                                color:R.colors.primary
                              )
                              ),
                            ),
                            Center(
                              child: Container(
                                width:width*0.8,
                                height:height*0.1,
                                decoration:BoxDecoration(),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    fillColor:Colors.white,
                                    filled:true,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color:R.colors.primary),
                                      borderRadius:BorderRadius.circular(10)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:BorderRadius.circular(10)
                                    )
                                  ),
                                ),
                              ),
                            ),

                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: R.colors.primary,
                                ),
                                onPressed: (){},
                                child: Text("Sign In",style:GoogleFonts.nunito(
                                  fontSize:20,
                                  fontWeight:FontWeight.bold
                                ),
                            )
                          )
                        ),

                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            Text("Dont't Have Account ?",
                            style: GoogleFonts.nunito(
                              fontSize:16,
                              fontWeight:FontWeight.w600
                            )
                            ),
                            TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                              },
                               child: Text("Sign Up Now",
                               style: GoogleFonts.nunito(
                              fontSize:16,
                              fontWeight:FontWeight.bold,
                              color:R.colors.primary
                            )
                               ))
                          ],
                        )
                          ]
                        
                        )
                       ),
                     )
                    ],
                  ),
                ),
              )
            
            
          ]
        ),
    );
  }
}