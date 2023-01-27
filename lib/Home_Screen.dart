import 'package:flutter/material.dart';
import 'package:himanshu_app/Screens/Column.dart';
import 'Screens/Animation.dart';
import 'Screens/Api.dart';
import 'Screens/Bottom_Bar.dart';
import 'Screens/Card.dart';
import 'Screens/Carousel_Slide.dart';
import 'Screens/Date_Time_Now.dart';
import 'Screens/Grid_View.dart';
import 'Screens/Icons.dart';
import 'Screens/Log_In & Log_out.dart';
import 'Screens/Menu_Bar_Drawer.dart';
import 'Screens/Phone_Ui.dart';
import 'Screens/Shopshy.dart';
import 'Screens/Table.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('ALL IN ONE')),
          backgroundColor: Colors.lightGreen,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        color: Colors.black,
                        width: 200,
                        margin: const EdgeInsets.all(0),
                        child: ElevatedButton(
                          child: const Text('Page_Back'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const mypage()));
                          },
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: const Text(
                            'Column',
                            style: TextStyle(
                                backgroundColor: Colors.red,
                                color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Columnn()));
                          },
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.blue,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: const Text('Carousel_Slide_Bottom'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Carousel()));
                          },
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.brown,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: const Text('Table',
                              style: TextStyle(
                                  backgroundColor: Colors.red,
                                  color: Colors.black)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => infopage()));
                          },
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.amber,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: const Text('Bottom_Menu',
                              style: TextStyle(
                                  backgroundColor: Colors.red,
                                  color: Colors.black)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => bottommenu()));
                          },
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.indigo,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: const Text('Menu_Page',
                              style: TextStyle(
                                  backgroundColor: Colors.red,
                                  color: Colors.black)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => labelpage()),
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.lightGreen,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: const Text('Card',
                              style: TextStyle(
                                  backgroundColor: Colors.red,
                                  color: Colors.black)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => card()));
                          },
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.orange,
                        width: 200,
                        margin: const EdgeInsets.all(10),
                      ),
                      Container(
                        height: 200,
                        color: Colors.blueGrey,
                        margin: const EdgeInsets.all(10),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.green,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    child: const Text('Log_In & Log_Out',
                        style: TextStyle(
                            backgroundColor: Colors.red, color: Colors.black)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Log_in()));
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    child: const Text('Date & Time Now',
                        style: TextStyle(
                            backgroundColor: Colors.red, color: Colors.black)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Date()));
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.red,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    child: const Text('Grid_View',
                        style: TextStyle(
                            backgroundColor: Colors.red, color: Colors.black)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Grid()));
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.red,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    child: const Text('Phone_ui',
                        style: TextStyle(
                            backgroundColor: Colors.red, color: Colors.black)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Phone()));
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.pink,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => logo()));
                    },
                    child: const Text('Icons'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.red,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    child: const Text('Shopshy',
                        style: TextStyle(
                            backgroundColor: Colors.red, color: Colors.black)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Shopshy_Screen()));
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.red,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    child: const Text('Api',
                        style: TextStyle(
                            backgroundColor: Colors.red, color: Colors.black)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => api()));
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.red,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    child: const Text('Animation',
                        style: TextStyle(
                            backgroundColor: Colors.red, color: Colors.black)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Animi()));
                    },
                  ),
                ),

              ])),
        ));
  }
}

// ignore: camel_case_types
class mypage extends StatelessWidget {
  const mypage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('2ND ')),
        body: Center(
          child: FloatingActionButton(
            child: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
