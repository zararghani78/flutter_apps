import 'package:flutter/material.dart';


class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  bool _showText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,

body: ListView(
  children: [Container(
  height: 550,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(17),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 10,
      )
    ]
  ),
    padding: const EdgeInsets.all(15.0),
    child: SafeArea(child: Column(
      children: [
        Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sign in",style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),
            Text("Sign up",style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold)),
          ],
        ),
    
        Container(
          padding: EdgeInsets.only(top: 40,),
    alignment: Alignment.topLeft,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     // mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      
      Text("Welcome to Keells",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Text("Lets go Started",style: TextStyle(fontSize: 16,),),
    
          Container(
            width: 330,
            height: 55,
            margin: EdgeInsets.only(top: 30),
    padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                )
              ]
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter your Email",
              
              ),
            ),
          ),
    
           Container(
            width: 330,
            height: 55,
            margin: EdgeInsets.only(top: 30),
    padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                )
              ]
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your Password",
                border: InputBorder.none,
              
              ),
            ),
          ),
    
           Container(
            width: 330,
            height: 55,
            margin: EdgeInsets.only(top: 30),
    padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                )
              ]
            ),
            child: TextFormField(
               obscureText: _showText,
              decoration: InputDecoration(
                border: InputBorder.none,
               suffixIcon: IconButton(
                  icon: Icon(
                    _showText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _showText = !_showText;
                    }
                  
              );
                  }
            ),
          ),
            ),),
        
           InkWell(
            onTap: (){
              Navigator.pushNamed(context, "Bidpage");
            },
             child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                
                 Container(
                  width: 45,
                  height: 45,
                  margin: EdgeInsets.only(top: 30, ),
                   padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      )
                    ]
                  ),
                  child: Icon(Icons.arrow_forward,color: Colors.white, size: 30,),
                    
                    ),
                  
                         
               ],
             ),
           ),
  
  
         
      ],
    )
    ),
     
  
          
    
    
    
      ]
      
      )
      
        
  
  ))],
),
);
  }
}