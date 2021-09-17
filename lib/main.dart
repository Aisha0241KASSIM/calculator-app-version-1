import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );


    
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CustomColor _customColor = CustomColor();
  Widget keypadButton(String btntxt, Color btncolor, Color txtcolor){
    return Container(
     height: 80.0, 
     width:80.0,
     child: ElevatedButton(
       onPressed: (){},
        child: Text(
          btntxt,
         style: TextStyle(
           fontSize: 35.0,
           color: txtcolor,
         ), 
        ),
        style: ElevatedButton.styleFrom(
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)
         ),
        primary:_customColor.keyadcolor,
        padding: EdgeInsets.all(20.0)
        ),
     ) );
  }


   Widget keypadSymbolButton(String btntxt, Color btncolor, Color txtcolor){
    return Container(
     height: 80.0, 
     width:80.0,


     child: ElevatedButton(
       onPressed: (){},
        child: Text(
          btntxt,
         style: TextStyle(
           fontSize: 35.0,
           color: txtcolor
         ), 
        ),
        style: ElevatedButton.styleFrom(
         shape: CircleBorder(),
        primary:_customColor.kepadsymbolsColor,
        padding: EdgeInsets.all(20.0)


        )
    ));
    
  }
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _customColor.backgroundcolor,
     
     body: SafeArea(
       child: 
       Column(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Padding(
                 padding: EdgeInsets.all(10.0),
                 child: Text("0",
                 textAlign: TextAlign.left,
                 style: TextStyle(color: Colors.white,
                 fontSize :100,
                 fontWeight: FontWeight.bold,

                   
                 )),
                 )
             ],
           ),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              keypadButton("AC", Colors.black, Colors.white),
              keypadButton("+/-", Colors.black, Colors.white),
              keypadButton("%", Colors.black, Colors.white),
              keypadSymbolButton("/", Colors.black, Colors.white)
              
              ]
               ),
               SizedBox(
                height: 20.0 , 
               ),
               Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              keypadButton("7", Colors.black, Colors.white),
              keypadButton("8", Colors.black, Colors.white),
              keypadButton("9", Colors.black, Colors.white),
              keypadSymbolButton("x", Colors.black, Colors.white),
              
              ]
               ),
               SizedBox(
                height: 20.0 , 
               ),
               Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              keypadButton("4", Colors.black, Colors.white),
              keypadButton("5", Colors.black, Colors.white),
              keypadButton("6", Colors.black, Colors.white),
              keypadSymbolButton("-", Colors.black, Colors.white),
              
              ]
               ),
               SizedBox(
                height: 20.0 , 
               ),
               Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              keypadButton("1", Colors.black, Colors.white),
              keypadButton("2", Colors.black, Colors.white),
              keypadButton("3", Colors.black, Colors.white),
              keypadSymbolButton("+", Colors.black, Colors.white),

              
              ]
               ),
               SizedBox(
                height: 20.0 , 
               ),
                    Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              keypadButton("0", Colors.black, Colors.white),
              keypadButton(".", Colors.black, Colors.white),
              keypadButton("=", Colors.black, Colors.white),
              
              keypadSymbolButton("÷", Colors.black, Colors.white),
              ]
               ),
               SizedBox(
                height: 20.0 , 
               )
         ]
         ),), 
       
      
    );
      }
  }

class Circular {
}


class CustomColor {
  final Color backgroundcolor = Color.fromRGBO(30, 38, 53, 1);
  final Color keyadcolor = Color.fromRGBO(40, 51, 71, 1);
  final Color kepadsymbolsColor = Color.fromRGBO(43, 102, 206, 1 );



}