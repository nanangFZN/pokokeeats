import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokokeeats/r.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start,
        children:[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Hi, Nanang Fauzan Najib",
            style:GoogleFonts.nunito(
              fontSize:18,
              fontWeight:FontWeight.bold,
              color:R.colors.primary
            )
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.2),
            child: Text("Enjoy Your Meal Time",
            style:GoogleFonts.nunito(
              fontSize:14,
              fontWeight:FontWeight.w500,
              color:R.colors.primary
            )
            ),
          ),
          Expanded(
            child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width:width*0.8,
                    height:height*0.1,
                    margin: EdgeInsets.all(10),
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color:R.colors.second
                    ),
                    child:Stack(
                      children:[
                        Row(
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("Discount 50% For New User",
                              style:GoogleFonts.novaFlat(
                                fontSize:16,
                                fontWeight:FontWeight.bold
                              )
                              ),
                            )),
                            Expanded(child: Image.asset(R.images.disc))
                          ],
                        )
                      ]
                    )
                  ),
                );
            })
             ),
            Expanded(
            child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width:width*0.4,
                          height:height*0.125,
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(10),
                            color:R.colors.outlet
                          ),
                          child:Stack(
                            children:[
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Center(
                                    child: Padding(
                                      padding:  EdgeInsets.only(left:width*0.025),
                                      child: Text("Nearby \nOutlet",
                                      style:GoogleFonts.nunito(
                                        fontSize:16,
                                        fontWeight:FontWeight.bold,
                                        color:R.colors.primary

                                      )
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.maps_home_work,color:R.colors.primary)
                                ]
                              )
                            ]
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width:width*0.4,
                          height:height*0.125,
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(10),
                            color:R.colors.outlet
                          ),
                          child:Stack(
                            children:[
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children:[
                                  Center(
                                    child: Padding(
                                      padding:  EdgeInsets.only(left:width*0.025),
                                      child: Text("Nearby \nOutlet",
                                      style:GoogleFonts.nunito(
                                        fontSize:16,
                                        fontWeight:FontWeight.bold,
                                        color:R.colors.primary

                                      )
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.maps_home_work,color:R.colors.primary)
                                ]
                              )
                            ]
                          )
                        ),
                      ),
                    ],
                  ),
              
                )

             ),
             Expanded(
            child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width:width*0.2,
                    height:height*0.1,
                    color:Colors.red
                  ),
                );
                
            })
             ),
        ]
      )
    );
  }
}