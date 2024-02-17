import 'package:flutter/material.dart';

void main() {
  runApp( BasketCounter());
}

class BasketCounter extends StatefulWidget {
  @override
  State<BasketCounter> createState() => _BasketCounterState();
}

class _BasketCounterState extends State<BasketCounter> {
  int teamAPts = 0;

  int teamBPts = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFFFF9900),
          title: Text("Points Counter",
          style: TextStyle(color: Color(0XFFFFFFF3)),
          ),
        ),
        backgroundColor: Color(0XFFF8F8F8),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text("Team A",style: TextStyle(fontSize: 32),),
              Text("$teamAPts",style: TextStyle(fontSize: 150),),
              Padding(
                padding: EdgeInsets.only(bottom: 10,left: 10),
                child: ElevatedButton(
              
              onPressed: (){teamAPts++;
              setState(() {
                
              });
              }, 
              style: ElevatedButton.styleFrom(fixedSize: Size(150, 50),primary: Color(0XFFFF9900)),
              child: Text("Add 1 point",style: TextStyle(color: Colors.black),)
              
              ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10,left: 10),
                child: ElevatedButton(
              
              onPressed: (){teamAPts+=2;
              setState(() {
                
              });}, 
              style: ElevatedButton.styleFrom(fixedSize: Size(150, 50),primary: Color(0XFFFF9900)),
              child: Text("Add 2 point",style: TextStyle(color: Colors.black),)
              
              ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10,left: 10),
                child: ElevatedButton(
              
              onPressed: (){teamAPts+=3;
              setState(() {
                
              });}, 
              style: ElevatedButton.styleFrom(fixedSize: Size(150, 50),primary: Color(0XFFFF9900)),
              child: Text("Add 3 point",style: TextStyle(color: Colors.black),)
              
              ),
              ),
            ],),
            SizedBox(
              height: 570,

              child:VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              indent: 50,

            ), 
            ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text("Team B",style: TextStyle(fontSize: 32),),
              Text("$teamBPts",style: TextStyle(fontSize: 150),),
              Padding(
                padding: EdgeInsets.only(bottom: 10,left: 10),
                child: ElevatedButton(
              
              onPressed: (){
                teamBPts++;
                setState(() {
                  
                });
              }, 
              style: ElevatedButton.styleFrom(fixedSize: Size(150, 50),primary: Color(0XFFFF9900)),
              child: Text("Add 1 point",style: TextStyle(color: Colors.black),)
              
              ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10,left: 10),
                child: ElevatedButton(
              
              onPressed: (){teamBPts+=2;
              setState(() {
                
              });}, 
              style: ElevatedButton.styleFrom(fixedSize: Size(150, 50),primary: Color(0XFFFF9900)),
              child: Text("Add 2 point",style: TextStyle(color: Colors.black),)
              
              ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10,left: 10),
                child: ElevatedButton(
              
              onPressed: (){teamBPts+=3;
              setState(() {
                
              });}, 
              style: ElevatedButton.styleFrom(fixedSize: Size(150, 50),primary: Color(0XFFFF9900)),
              child: Text("Add 3 point",style: TextStyle(color: Colors.black),)
              
              ),
              ),
            ]
            )
          ],),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [Padding(
                padding: EdgeInsets.only(top: 50),
                child: ElevatedButton(
              
              onPressed: (){
                teamAPts = 0;
                teamBPts = 0;
                setState(() {
                  
                });
              }, 
              style: ElevatedButton.styleFrom(fixedSize: Size(150, 50),primary: Color(0XFFFF9900)),
              child: Text("reset",style: TextStyle(color: Colors.black),)
              
              ),
              ),],)
        
        ]), 
        
      ),

    );
  }
}




