import 'package:flutter/material.dart';

class labelpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _lablepageState();
  }
}

printname()async{
  await Future.delayed(const Duration(seconds: 5),(){
    print('Project');
  });
  print('Welcome');
}
class _lablepageState extends State<labelpage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome'),),
      body: Center(child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(child: const Text('Look And Tap Up',style: TextStyle(fontSize: 20),),onPressed: (){},),
    const SizedBox(height: 20),
     FloatingActionButton(onPressed: (){Navigator.pop(context);},child:const Icon(Icons.arrow_back))
        ],
      ),),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(child: Container(
              height: 100,color: Colors.lime,child: ElevatedButton(
              child: const Text('Click Any One',style: TextStyle(color: Colors.white),),
              onPressed: (){print('Clicked');},
            ),),),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: (){
                print('Home');
              },
            ),
            ListTile(
              title: const Text('Search'),
              leading: const Icon(Icons.search),
              onTap: (){
                print('Search');
              },
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: (){
                print('Settings');
              },
            ),
            ListTile(
              title: const Text('User Verify'),
              leading: const Icon(Icons.verified_user),
              onTap: (){
                print('User Verify');
              },
            ),
            ListTile(
              title: const Text('Security'),
              leading: const Icon(Icons.security),
              onTap: (){
                print('Security');
              },
            ),
            ListTile(
              title: const Text('Log_In'),
              leading: const Icon(Icons.login),
              onTap: (){
                print('Log_In');
              },
            ),
            ListTile(
              title: const Text('Log_out'),
              leading: const Icon(Icons.logout),
              onTap: (){

              },
            ),
          ],
        ),
      ),);
  }
}

