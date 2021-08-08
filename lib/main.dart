import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _CalculatorState();
  }
}

class _CalculatorState extends State<MyApp> {
  // This widget is the root of your application.
  double result=0.0;
  double firstvalue,secondvalue;
  String symbol;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
      appBar: AppBar(
        //iconTheme: Icons.account_box_outlined,
        title: Text("My Calculater"),
        centerTitle: true,
        backgroundColor:Colors.red,
        leading: GestureDetector(
          child:Icon(Icons.menu),
          
        ),
        actions: [
         Icon(Icons.settings),
         Icon(Icons.calculate),
         Icon(Icons.search)
          

          
        ],
        
     
     
        //backgroundColor:Colors.red,
         ),
        body: Container(
         
          margin: EdgeInsets.all(25),
          //child: Center (
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                  
                  Container(
                    
                    child:TextField(
                      keyboardType: TextInputType.number,
                      decoration:InputDecoration(
                        hintText:"first number",
                        enabledBorder: UnderlineInputBorder(
                         //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                         borderSide: BorderSide(color: Colors.deepOrangeAccent),
                        ),
                        focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(20.0)),
                         borderSide: BorderSide(color: Colors.pink),
                         ),
                       
                      ),
                      onChanged: (value){
                        setState(() {
                            firstvalue =double.parse(value);
                        });
                      

                      },
                    ),
                  ),
                  
                     
                   Container(
                      margin: EdgeInsets.symmetric(vertical:16),
                   child: TextField(
                      keyboardType: TextInputType.number,
                      decoration:InputDecoration(
                        hintText:"operation (+, - , / , *)",
                         enabledBorder:  UnderlineInputBorder(
                         //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                         borderSide: BorderSide(color: Colors.deepOrangeAccent),
                         ),
                         focusedBorder:UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.pink ),
                         ),
                        
                      ),

                      onChanged: (value){
                       setState(() {
                          symbol =(value);
                       });

                      },
                    ),
                   ),
  
                  
                 Container(
                          margin: EdgeInsets.symmetric(vertical:16),
                     child:TextField(
                      keyboardType: TextInputType.number,
                      decoration:InputDecoration(
                        hintText:"second number",
                        enabledBorder:  UnderlineInputBorder(
                         //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                         borderSide: BorderSide(color: Colors.deepOrangeAccent),
                        ),
                        focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(20.0)),
                         borderSide: BorderSide(color: Colors.pink),
                         ),
                       
                      ),
                      onChanged: (value){
                        setState(() {
                            secondvalue =double.parse(value);
                        });
                      

                      },
                    ),
                  ),
                
                 Container(
                  // margin: EdgeInsets.symmetric(vertical:5),
                   child: RaisedButton(
                    
                     child: Text("=",style: TextStyle(color:Colors.white ,fontSize:25,
                     ), 
                     ),
                     onPressed: () {
                       setState(() {
                         if(symbol=="+"){
                            result= firstvalue + secondvalue;

                         }
                         else if(symbol=="-"){
                            result= firstvalue - secondvalue;

                         }
                         else if(symbol=="/"){
                           if(secondvalue==0)
                           {
                             //result=String.fromCharCode("hhhh");
                           }
                           else{
                             result= firstvalue / secondvalue;
                           }
                         }
                         else if(symbol=="*"){
                           result= firstvalue * secondvalue;
                         }
                        
                       });
                     
                     },
                     color: Colors.deepOrangeAccent,
                     splashColor: Colors.purple,
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50)
                     ),
                     ),
                   ),

                 ),
                 SizedBox(
                  
                      height: 15.0,
                 ),
                 
                 Text(
                   "Result: $result",
                   style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                 ),
                
              ],
            ),
          
        ),
        ),
       );
       
    
     
  }
}
