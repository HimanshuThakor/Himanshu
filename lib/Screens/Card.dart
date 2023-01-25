import 'package:flutter/material.dart';

class card extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(title: const Text('Card'),),
   body: Container(
     child: const Center(
       child: Card(child: Padding(
         padding: EdgeInsets.all(20.0),
         child: Text('C  A  R  D'),
       ),elevation: 8,
         color: Colors.blue,),
     ),
   ),
 );
  }

}