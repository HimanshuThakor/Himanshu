import 'dart:async';
import 'package:flutter/material.dart';

class Shopshy_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Shopshy_ScreenState();
  }
}

class Shopshy_ScreenState extends State<Shopshy_Screen>{
  @override

  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Shopshy()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.network('https://tse4.mm.bing.net/th?id=OIP.osYiIgQEBQXnrtWMP1U_JAHaGn&pid=Api&P=0')),
    );
  }

}

class Shopshy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  return ShopshyState();
  }


}

class ShopshyState extends State<Shopshy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Shopshy')),),
      body: GridView.count(crossAxisCount: 2,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        children: <Widget>[
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse2.mm.bing.net/th?id=OIP.wcbNPJcLVcu0QbLm0AZKYwHaJQ&pid=Api&P=0',height: 118,),

                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)
              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse3.mm.bing.net/th?id=OIP.RAf_sbnXeCXcpdzZgl_QFAHaKl&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)
              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse2.mm.bing.net/th?id=OIP.uhJkkqJMvYrKZaxBMDlVkgHaJK&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)
              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse4.mm.bing.net/th?id=OIP.KRpCbC-rzbn4n8ytseDqGwHaIq&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)

              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse2.mm.bing.net/th?id=OIP.4gcFli2grxs0UFHWeOJ_KgHaJ4&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)

              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse2.mm.bing.net/th?id=OIP.pNEJ-_nLUddsdTl1Sz4e4gHaJQ&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)
              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse3.mm.bing.net/th?id=OIP.ck0PWwskNTlShfketrknNgHaJ4&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)

              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse1.mm.bing.net/th?id=OIP.LoBpjUQJzzx_Hlf8vtM-zgHaJ4&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)

              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse1.mm.bing.net/th?id=OIP.jgw52xMT29QotCE_NxlmMgHaI9&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)

              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse2.mm.bing.net/th?id=OIP.qajzQAl2tkJXIuUhOMqsugHaJ4&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)

              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse4.mm.bing.net/th?id=OIP.FCLhKMdwz4abKAPQ5Epn1wHaKk&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)

              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse4.mm.bing.net/th?id=OIP.OQwN-lYnd9VItf4-Tr78MwHaJQ&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)
              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse1.mm.bing.net/th?id=OIP.H3WIrutjePoWIjYMzS9HKwHaHa&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)
              ],
            ),
          ),
          Card(
            child:Column(
              children: [
                Stack(
                  children: <Widget>[
                    Image.network('https://tse3.mm.bing.net/th?id=OIP.V65VvjRNYgCtrVzIM3G37QHaJ4&pid=Api&P=0',height: 118,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ElevatedButton(
                    child: const Text('Buy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),onPressed: (){setState(() {
                    showDialog(context: context, builder: (Buildcontext) =>   const AlertDialog(icon: Icon(Icons.add),title: Text('Confirm'),),
                    );});},),
                  ],)
              ],
            ),
          ),
        ],
      ),
      drawer: ListView(children: const [ListTile(leading: Icon(Icons.shop),title: Text('Shop'),subtitle: Text('Shopinng'),)], ),
    );
  }
}
