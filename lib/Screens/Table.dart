import 'package:flutter/material.dart';

class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/images/Joker1.jpg')),);
  }
}

class  infopage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Table'),),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Table(
          border: TableBorder.all(),
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const TableRow(
                children: [
                  Text('Name',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                  Text('Password',style: TextStyle(fontSize:22,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                ]
            ),
            const TableRow(
                children: [
                  Text('HIMANSHU',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                  Text('143',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                ]
            ),
            const TableRow(
                children: [
                  Text('Yash',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                  Text('143',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                ]
            ),
            const TableRow(
                children: [
                  Text('Malav',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                  Text('143',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                ]
            ),
            const TableRow(
                children: [
                  Text('Meet',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                  Text('143',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                ]
            ),
            const TableRow(
                children: [
                  Text('Dhruv',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                  Text('143',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                ]
            ),
            const TableRow(
                children: [
                  Text('Harsh',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                  Text('143',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                ]
            ),
            const TableRow(
                children: [
                  Text('Hardik',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                  Text('143',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                ]
            ),
            const TableRow(
                children: [
                  Text('Jasmin',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                  Text('143',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                ]
            ),
            const TableRow(
                children: [
                  Text('Hiren',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                  Text('143',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
                ]
            ),
          ],
        ),
      ),
    );
  }
}
