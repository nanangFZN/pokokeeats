import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokokeeats/r.dart';
import 'package:pokokeeats/views/main/main_page.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height; 
    return Scaffold(
      body:SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Sign Up",style:GoogleFonts.nunito(
                fontSize:24,
                fontWeight:FontWeight.bold,
              )),
            ),
            Container(
              width: double.infinity,
              height: height*0.8,
              margin: EdgeInsets.all(width*0.025),
              decoration: BoxDecoration(
                color:R.colors.primary.withOpacity(0.1),
                borderRadius:BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Fullname",
                    style:TextStyle(
                      fontSize:14,
                      fontWeight:FontWeight.bold,
                      color:R.colors.primary
                    )),
                  ),
                  Center(
                    child: Container(
                      width:width*0.8,
                      height:height*0.1,
                      child: TextFormField(
                        decoration:InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder:UnderlineInputBorder(
                            borderRadius:BorderRadius.circular(10),
                            borderSide: BorderSide(color: R.colors.primary)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(10),
                            borderSide: BorderSide(color: R.colors.primary)
                          )
                        )
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text("Phone",
                    style:TextStyle(
                      fontSize:14,
                      fontWeight:FontWeight.bold,
                      color:R.colors.primary
                    )),
                  ),
                  Center(
                    child: Container(
                      width:width*0.8,
                      height:height*0.1,
                      child: TextFormField(
                        decoration:InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder:UnderlineInputBorder(
                            borderRadius:BorderRadius.circular(10),
                            borderSide: BorderSide(color: R.colors.primary)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(10),
                            borderSide: BorderSide(color: R.colors.primary)
                          )
                        )
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Birth Of Date",
                    style:TextStyle(
                      fontSize:14,
                      fontWeight:FontWeight.bold,
                      color:R.colors.primary
                    )),
                  ),
                  Center(
                    child: Container(
                      width:width*0.8,
                      height:height*0.1,
                      child: TextFormField(
                        decoration:InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder:UnderlineInputBorder(
                            borderRadius:BorderRadius.circular(10),
                            borderSide: BorderSide(color: R.colors.primary)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(10),
                            borderSide: BorderSide(color: R.colors.primary)
                          )
                        )
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Email",
                    style:TextStyle(
                      fontSize:14,
                      fontWeight:FontWeight.bold,
                      color:R.colors.primary
                    )),
                  ),
                  Center(
                    child: Container(
                      width:width*0.8,
                      height:height*0.1,
                      child: TextFormField(
                        decoration:InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder:UnderlineInputBorder(
                            borderRadius:BorderRadius.circular(10),
                            borderSide: BorderSide(color: R.colors.primary)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(10),
                            borderSide: BorderSide(color: R.colors.primary)
                          )
                        )
                      ),
                    ),
                  ),
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tightFor(width:width*0.4,height:height*0.075),
                      child: ElevatedButton
                      (
                        style: ElevatedButton.styleFrom(
                          primary: R.colors.primary
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                        },
                       child: Text("Sign Up")),
                    ),
                  ),
                  SizedBox(height:height*0.025),
                  Center(
                    child:Row(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already Have An Account ?"),
                        TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context,"login");
                          },
                           child: Text("Sign In",style:TextStyle(
                            color:R.colors.primary
                           )))
                      ],
                    )
                  )
                ]
              ),
            )
          ]
        ),
      )
    );
  }
}