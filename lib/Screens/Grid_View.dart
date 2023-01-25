import 'package:flutter/material.dart';

var gridcolor = [
  Colors.blue,
  Colors.indigo,
  Colors.black,
  Colors.red,
  Colors.blueGrey,
  Colors.pink,
  Colors.lightGreen,
  Colors.orange,
  Colors.yellow,
  Colors.brown,
  Colors.grey,
  Colors.lime,
];

class Grid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

 return Scaffold(
   appBar: AppBar(title: const Text('Grid View'),),
   body: Center(
     child: Container(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(onPressed: (){
             Navigator.push(context,MaterialPageRoute(builder: (context) => Grid_Count()));

           }, child: const Text('Grid_View_Count')),
          const SizedBox(height: 10,),
           ElevatedButton(onPressed: (){
             Navigator.push(context,MaterialPageRoute(builder: (context) => Grid_Extent()));

           }, child: const Text('Grid_View_Extent')),
           const SizedBox(height: 10,),
           ElevatedButton(onPressed: (){
             Navigator.push(context,MaterialPageRoute(builder: (context) => Grid_Build()));

           }, child: const Text('Grid_View_Build'))

         ],
       ),
     ),
   )
 );
  }

}

//  GRID VIEW COUNT //
class Grid_Count extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Grid_View_Count'),),
    body:  GridView.count(
       crossAxisCount: 4,
       crossAxisSpacing: 11,
       mainAxisSpacing: 11,
       children: [
       Container(color: gridcolor[0],),
       Container(color: gridcolor[1],),
       Container(color: gridcolor[2],),
       Container(color: gridcolor[3],),
       Container(color: gridcolor[4],),
       Container(color: gridcolor[5],),
       Container(color: gridcolor[6],),
       Container(color: gridcolor[7],),
       Container(color: gridcolor[8],),
       Container(color: gridcolor[9],),
     ],),
  );
  }
}

// GRID VIEW EXTENT //
class Grid_Extent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Grid_View_Extent'),),
    body: GridView.extent(
      maxCrossAxisExtent:100,
      mainAxisSpacing: 11,
      crossAxisSpacing: 11,
      children: [
        Container(color: gridcolor[0],),
        Container(color: gridcolor[1],),
        Container(color: gridcolor[2],),
        Container(color: gridcolor[3],),
        Container(color: gridcolor[4],),
        Container(color: gridcolor[5],),
        Container(color: gridcolor[6],),
        Container(color: gridcolor[7],),
        Container(color: gridcolor[8],),
        Container(color: gridcolor[9],),

      ],
    ),
  );
  }

}

// GRID VIEW BUILDER //
class Grid_Build extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid_View_Build'),),
      body:  GridView.builder(
        itemCount: gridcolor.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,mainAxisSpacing: 11,crossAxisSpacing: 11),
          itemBuilder: (context,index){
            return Container(color: gridcolor[index],);
          }
      )
    );
  }
}