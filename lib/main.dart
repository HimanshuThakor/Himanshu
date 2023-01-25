import 'package:flutter/material.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';
import 'Home_Screen.dart';
void main(){
  runApp(Intro());
}

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'intro screen demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Introclass(),
        debugShowCheckedModeBanner: false,
      );
}

class Introclass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Intro();
  }
}

class _Intro extends State<Introclass> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => NextPage(),
        ),
      ),
      onSkip: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => NextPage())),
      footerBgColor: Colors.blue.withOpacity(.8),
      activeDotColor: Colors.white,
      footerRadius: 18.0,
//      indicatorType: IndicatorType.CIRCLE,
      slides: [
        IntroScreen(
          title: 'Easy To Use',
          imageAsset: 'assets/images/main.jpg',
          description: 'Confirm You  Want To Use',
          headerBgColor: Colors.white,
        ),
        IntroScreen(
          title: 'You See Something New',
          headerBgColor: Colors.white,
          imageAsset: 'assets/images/krishna.jpg',
          description: "Always Focus On Your Goals",
        ),
        IntroScreen(
          title: 'This App Made By Himanshu ',
          headerBgColor: Colors.white,
          imageAsset: 'assets/images/shi.jpg',
          description:
              "I Hope You Like This App, It Is Beginning App So Hope You Like That.",
        ),
      ],
    );

    return Scaffold(
      body: screens,
    );
  }
}

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}