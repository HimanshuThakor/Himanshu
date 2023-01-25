import 'package:flutter/material.dart';

class Columnn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Youtube'),),
        body: Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const ElevatedButton(onPressed: DateTime.now,
              child: Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                width: 300,),
            ),
            const ElevatedButton(onPressed: DateTime.now,
              child: Icon(Icons.battery_full, color: Colors.red,
                size: 50,
                semanticLabel: 'Text to announce in accessibility modes',),),
            const ElevatedButton(onPressed: DateTime.now,
                child: Icon(Icons.favorite, color: Colors.red,
                  size: 50,
                  semanticLabel: 'Text to announce in accessibility modes',)),
            const Icon(Icons.kitchen, color: Colors.black,
              size: 50,
              semanticLabel: 'Text to announce in accessibility modes',),
            const Icon(Icons.rate_review, color: Colors.blue,
              size: 50,
              semanticLabel: 'Text to announce in accessibility modes',),
            const Icon(Icons.beach_access, color: Colors.blueAccent,
              size: 50,
              semanticLabel: 'Text to announce in accessibility modes',),
            const Image(
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              width: 300,
            )
          ],
        ),)
    );
  }
}