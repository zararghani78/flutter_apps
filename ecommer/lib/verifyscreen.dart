import 'package:flutter/material.dart';


class verifyscreen extends StatefulWidget {
  const verifyscreen({super.key});

  @override
  State<verifyscreen> createState() => _verifyscreenState();
}

class _verifyscreenState extends State<verifyscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Expanded(
            child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    

              decoration: BoxDecoration
          (
borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),

boxShadow: [
  BoxShadow(color: Colors.grey,blurRadius: 10,
  spreadRadius: 2,
  offset: Offset(0,3)),
],),

              
                    child: Row(
                      children:[
                    InkWell(
                              
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child:  Icon(Icons.arrow_back,size: 20,),
                     
                      
                        
                      ),
                       SizedBox(width: 120,),
                          Text("verify",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,)
                  , Text("Verify Your Number", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        
                  Row(
                    children: [
                      Text("4 digit code send to   ", style: TextStyle(fontSize: 12,),),
                      Text("+9230890100", style: TextStyle(fontSize: 16,color: Colors.blue),),
                    ],
                  ),
                        SizedBox(height: 30,),
                   Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                  SizedBox(height: 20),
                  buildOtpFields(),
                  Row(children: [
                  SizedBox(height: 20),
                  Text("Revrsed in",style: TextStyle(),),
                   Text("00:42 s",style: TextStyle(color: Colors.red, fontSize: 18),),
                 
                 SizedBox(width: 155,),
                InkWell(
                        
                    onTap:  () {
                      // Handle OTP verification logic here
                      var otpController;
                      String enteredOtp = otpController.text;
                      print('Entered OTP: $enteredOtp');
                      // Add your verification logic here
                    
                    },
                    child: Container(
                        height: 35,
                        width: 35,
                        
                        decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
                        
                        ),
                        child: Image.asset("assets/ok.png",width: 30,height: 30,),
                    )
                    ),
                        
                ],  
                  
                  ),
                ],
              ),
                        ),
                        
                ]
                
                
                
                ),
            ),
          ),
        );  }

  Widget buildOtpFields() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildOtpField(1),
        buildOtpField(2),
        buildOtpField(3),
        buildOtpField(4),
        buildOtpField(5),
      ],
    );
  }

  Widget buildOtpField(int position) {
    var otpController;
    return Container(
      width: 50,
      child: TextFormField(
        controller: otpController,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1, 
        decoration: InputDecoration(
          counter: Offstage(),
          contentPadding: EdgeInsets.symmetric(vertical: 4),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
            
          ),
        );
      
  }
}