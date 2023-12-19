import 'package:flutter/material.dart';


class Bidpage extends StatefulWidget {
  const Bidpage({super.key});

  @override
  State<Bidpage> createState() => _BidpageState();
}

class _BidpageState extends State<Bidpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(child:Container(

         decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 2,
            )
          ]
        ),
        child: Padding(padding: EdgeInsets.all(20),
        
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back,size: 30,),
        SizedBox(width: 90,),
                Text("Bid Now",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            ),
        
        Row(
          children: [
            Container(
        margin: EdgeInsets.only(top: 40),
        alignment: Alignment.topLeft,
        width: 130,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(0,3),
            
            )
            , 
          ]
        ),
        child: Image.asset("assets/th.jpeg",width: 150,height: 150,),
            ),
            SizedBox(width: 10,),
            Column(
        crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text("Ginger",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        Text("Price: Rs.28,00,00",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
        Text("Quntity: BookG",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        Row(
          children: [
            Text("25 Bid",style: TextStyle(fontSize: 18,color:Colors.green, fontWeight: FontWeight.bold),),
            Text(" |  4h : 25m",style: TextStyle(fontSize: 16,color:Colors.red,fontWeight: FontWeight.bold),)
          ],
        )
            
            ],)
          ],
        )
          ],
        ),
        
        ),
      )

      
      
      ),
    );
  }
}