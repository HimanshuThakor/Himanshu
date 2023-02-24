import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';

class Icun extends StatefulWidget {
  const Icun({super.key});

  @override
  State<StatefulWidget> createState() {
    return IconState();
  }
}

class IconState extends State<Icun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('New_1')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: Stack(
                  children: [
                    Container(
                      color: Colors.orange,
                      width: 250,
                      height: 250,
                    ),
                    Positioned(
                        top: 20,
                        left: 20,
                        child: InkWell(
                          child: Container(
                            color: Colors.yellow,
                            width: 310,
                            height: 310,
                          ),
                          onTap: () {
                            setState(() {});
                          },
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
                width: 100,
                child: btn(
                  btnName: 'Log_In',
                  callback: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext) => const AlertDialog(
                              title: Text('Sucess'),
                              content: Text('You Have Sucess Ful Log_In'),
                            ));
                  },
                  icon: const Icon(Icons.lock),
                  bgcolor: Colors.brown,
                )),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
                width: 100,
                child: btn(
                  btnName: 'Play',
                  callback: () {
                    print('Play');
                  },
                  icon: const Icon(Icons.play_arrow),
                  bgcolor: Colors.black,
                )),
            const SizedBox(
              height: 10,
            ),
            Con(),
            const FaIcon(FontAwesomeIcons.amazon),
            const FaIcon(
              FontAwesomeIcons.instagram,
              color: Colors.pink,
            ),
            const FaIcon(
              FontAwesomeIcons.whatsapp,
              semanticLabel: 'Whatsapp',
              color: Colors.green,
            ),
            const FaIcon(
              FontAwesomeIcons.google,
              color: Colors.blue,
            ),
            const Icon(LineAwesome.apple),
            const Icon(Bootstrap.google),
            const Icon(PixelArtIcons.message),
            Flag(Flags.india),
            InkWell(
                child: const Icon(Icons.logo_dev),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => logo()));
                }),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              child: const Icon(Icons.search),
            )
          ],
        ),
      ),
    );
  }
}

var col = [
  Colors.blue,
  Colors.red,
  Colors.brown,
  Colors.orange,
  Colors.indigo,
  Colors.deepPurple,
  Colors.green,
  Colors.grey,
];

class Con extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 11,
      runSpacing: 11,
      children: [
        Container(
          color: col[0],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[1],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[2],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[3],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[4],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[5],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[6],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[7],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[0],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[1],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[2],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[3],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[4],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[5],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[6],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[7],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[0],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[1],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[2],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[3],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[4],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[5],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[6],
          height: 50,
          width: 50,
        ),
        Container(
          color: col[7],
          height: 50,
          width: 50,
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class btn extends StatelessWidget {
  final String? btnName;
  final Color? bgcolor;
  final Icon? icon;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const btn(
      {required this.btnName,
      this.bgcolor,
      this.icon,
      this.textStyle,
      this.callback});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20), topLeft: Radius.circular(20)),
      )),
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                Text(
                  btnName!,
                  style: textStyle,
                )
              ],
            )
          : Text(
              btnName!,
              style: textStyle,
            ),
    );
  }
}

class bt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: [
        Container(
          width: 100,
          height: 100,
          color: col[1],
        )
      ],
    );
  }
}

class logo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return logoState();
  }
}

class logoState extends State {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Icun())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
      ),
      body: Center(child: Image.asset('assets/images/logo.jpg')),
    );
  }
}
