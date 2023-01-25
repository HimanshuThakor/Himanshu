
import 'package:flutter/material.dart';
class Phone extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return PhoneState();
  }

}

class PhoneState extends State<Phone>{
  var s;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Phone_Ui'),),
    body: Container(
      child: Column(
        children: [
          Expanded(
              child: Container(color: Colors.blue,
          child:ListView.builder(itemBuilder: (context,index)=> const Padding(
            padding: EdgeInsets.all(11),
            child: CircleAvatar(backgroundColor: Colors.orange,maxRadius: 50,),),
            itemCount: 20,scrollDirection: Axis.horizontal,),)),

       Expanded(
           flex: 4,
           child: Container(color: Colors.orange,
           child: ListView.builder(itemBuilder: (context,index)=>const ListTile(
             leading: CircleAvatar(backgroundColor: Colors.green,),
             title: Text('Name'),
             subtitle: Text('Number'),
             trailing: Icon(Icons.phone),
           ),itemCount: 10,),
           )),

          Expanded(child: Container(
              child: ListView.builder(itemBuilder: (context,index)=> Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),),itemCount: 10,))),
        ],
      ),
    ),

  );
  }
}
