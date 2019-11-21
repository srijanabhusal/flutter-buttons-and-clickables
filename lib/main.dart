import 'package:flutter/material.dart';
 
void main() => runApp(MaterialApp(debugShowCheckedModeBanner:false,home: MyApp(),));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  //this section defines the variables
   String name1="this is intial unclicked stage";
   String name2="this is intial unclicked stage";
   String name3="this is intial switch off stage";
   String name4="this is intial unclicked stage";
   String name5="this is intial unclicked stage";
   String name6="this is intial unclicked stage";
   String name7="this is intial unclicked stage";
   String name8="this is intial unclicked stage";
   bool switchstate=false;
   

   //this section defines the functions
   void onclick1(){
     setState(() {
      name1="Dear user you have clicked raised button"; 
     });
   }
    void onclick2(){
     setState(() {
      name2="Dear user you have clicked flat button"; 
     });
   }
   void onclick3(value){
     setState(() {
      switchstate=true; 
      name3="Dear user you have turned on the switch";
     });
   }
   void onclick4(){
     setState(() {
      name4="Dear user you have clicked floatingaction button"; 
     });
   }
   void onclick5(){
     setState(() {
      name5="Dear user you have clicked floatingactionbutton.extended button"; 
     });
   }
   void onclick6(){
     setState(() {
      name6="Dear user you have clicked icon button"; 
     });
   }
   void onclick7(){
     setState(() {
      name7="Dear user you have clicked inkwell"; 
     });
   }
   void onclick8(){
     setState(() {
      name8="Dear user you have clicked gesture detector"; 
     });
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Butons and Clickables'),),
      body:ListView( 
          children:<Widget>[Center(
            child:  Column(          
              children: <Widget>[
                //this section has 8 different types of clickable widgets 
                 RaisedButton(onPressed: onclick1, child: Text('raised button'),color: Colors.lightBlue[100],),
                 Text(name1),
                 SizedBox(height: 10,),
                 FlatButton(onPressed: onclick2,  child: Text('Flat button'),color: Colors.lightBlue[100],),
                 Text(name2),
                 SizedBox(height: 10,),
                 Switch(value: switchstate,onChanged:onclick3,activeTrackColor: Colors.lightBlue[100],),
                 Text(name3),
                 SizedBox(height: 10,),
                 FloatingActionButton(child:Icon(Icons.add),onPressed: onclick4,backgroundColor: Colors.lightBlue[300],),
                 Text(name4),
                 SizedBox(height: 10,),
                 FloatingActionButton.extended(icon: Icon(Icons.perm_identity),label:Text("click me"),onPressed: onclick5,backgroundColor: Colors.lightBlue[300]),
                 Text(name5),
                 SizedBox(height: 10,),
                 IconButton(icon: Icon(Icons.ring_volume),onPressed: onclick6,color: Colors.lightBlue[300],),
                 Text(name6),
                 SizedBox(height: 10,),
                 InkWell(
                   onTap: onclick7,
                  child: Text("this is inkwell",style: TextStyle(color: Colors.redAccent),)
                 ),
                 Text(name7),
                 SizedBox(height: 20,),
                 GestureDetector(
                    onTap: onclick8,
                  child: Text("this is gesture detector",style: TextStyle(color: Colors.orangeAccent),)
                 ),
                 Text(name8),
                  
              ],
            ),
          ),],
      ),           
    );
  }
}