import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Carousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CarouselState();
  }
}

class CarouselState extends State<Carousel> {
  var txt = 'homepage';
  var bgcolor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: const Text('Botom'),
      ),
      body: Container(
        padding: const EdgeInsets.all(100),
        child: Center(
          child: Text(
            txt,
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.home),
          Icon(Icons.settings),
          Icon(Icons.verified_user),
          Icon(Icons.security),
          Icon(Icons.add),
          Icon(Icons.login),
          Icon(Icons.logout),
        ],
        onTap: (index) {
          setState(() {
            if (index == 0) {
              bgcolor = Colors.blue;
              txt = 'home Page';
            }
            if (index == 1) {
              bgcolor = Colors.orange;
              txt = 'Setting Page';
            }
            if (index == 2) {
              bgcolor = Colors.yellow;
              txt = 'Verify User Page';
            }
            if (index == 3) {
              bgcolor = Colors.green;
              txt = 'Security Page';
            }
            if (index == 4) {
              bgcolor = Colors.red;
              txt = 'Add Page';
            }
            if (index == 5) {
              bgcolor = Colors.grey;
              txt = 'Log_In Page';
            }
            if (index == 6) {
              bgcolor = Colors.purple;
              txt = 'Log_Out Page';
            }
          });
        },
      ),
    );
  }
}