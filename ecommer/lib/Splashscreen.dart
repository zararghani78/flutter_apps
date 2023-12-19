import 'package:ecommer/verifyscreen.dart';
import 'package:flutter/material.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        body: Center(
          child: SingleChildScrollView(
            child: Column(
            
                  //  mainAxisAlignment:MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              
                Container(
            
                  padding: EdgeInsets.only(top: 150),
                  height: 250,
            
                  child: Text("Kneel",style: TextStyle(color:Colors.green,fontSize: 40,fontWeight: FontWeight.bold),)),
                  
            
                  
                  
                Container(
            
                 // height: 130,
                  padding: EdgeInsets.only(top: 180),
                  child: Column(
                    children: [
                      Text("Welcome!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 40,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "Registpage");
                        },
                        child: Container(
                          padding: EdgeInsets.only(left:75,top: 13),
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                          ),
                          child: Text("Sign  in",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        
                        ),
                      ),
            SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                           // Scaffold.of(verifyscreen);
                           Navigator.pushReplacementNamed(context, "verifyscreen");
                          },
                          child: Container(
                          padding: EdgeInsets.only(left:75,top: 13),
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(blurRadius: 4,
                              
                              spreadRadius: 1,),
                            ],
                            
                            color: Colors.white,
                          ),
                          child: Text("Sign  Up",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          
                                              ),
                        ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
            
            Text("Language",style: TextStyle( fontSize:20,)),
            SizedBox(width: 10,),
            Text("English",style: TextStyle( fontSize:20, fontWeight: FontWeight.bold),)
            
                      ],) 
                      , 
                    ],
                  ),
                ),
              
              ],
            ),
          ),
        )
      ),
    );
  }
}