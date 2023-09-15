import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('First Screen'),
     ),
     body: Center(
       child: ElevatedButton(
         child: Text('Click'),
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => SecondApp()));
         },
       ),

     ),
   );
  }

}


class SecondApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(

          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('Second'),
        ),
      ),
    );
  }
}


