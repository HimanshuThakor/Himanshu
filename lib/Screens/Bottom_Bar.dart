import 'package:flutter/material.dart';

class bottommenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _bottommenuState();
  }
}

class _bottommenuState extends State<bottommenu> {
  var s = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom"),
    
      ),
      body: const Center(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
          
              icon: Icon(Icons.info_outline), label: "Info"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        ],
        currentIndex: s,
        onTap: (setvalue) {
          setState(() {
            s = setvalue;
          });
        },
      ),
    );
  }
}
