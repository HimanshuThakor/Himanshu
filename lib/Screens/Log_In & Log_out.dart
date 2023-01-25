import 'package:flutter/material.dart';

class Log_in extends StatefulWidget{
  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  bool? isChecked = false;
  var email = TextEditingController();

  var pass = TextEditingController();

  var phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Log_In & Log_out'),),
    body: Center(
      child: Container(
        width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  IMAGE  //
            Container(child: Image.asset('assets/images/me.jpg'),width: 150,height: 150,),
              const SizedBox(height: 5,),

              //  ENTER E-MAIL  //
              TextField(
                controller: email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text('Enter Email...'),
                  suffixIcon: Icon(Icons.email_outlined)
                ),

              ),

              const SizedBox(height: 10),

              // PHONE NUMBER //
              TextField(
                controller: phone,
                keyboardType: TextInputType.number,

                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Enter Number...'),
                  ),

                  suffixIcon: Icon(Icons.phone),

                ),


              ),

              const SizedBox(height: 10,),

              // ENTER PASSWORD //
              TextField(
                controller: pass,
                keyboardType: TextInputType.number,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Enter Password...'),
                  ),

                  suffixIcon: Icon(Icons.remove_red_eye),

                ),


              ),

              const SizedBox(height: 10,),

              ElevatedButton(onPressed: (){
                String uemail = email.text.toString();
                String uphone = phone.text.toString();
                String upass = pass.text.toString();
                print('Emai =$uemail,Number =$uphone,Password =$upass');
              },
                child: const Text('Log_In'),
              ),
              Checkbox(value: isChecked, onChanged: (newBool){ setState((){ isChecked = newBool;}); })
            ],
          ),
        ),
      ),
  );
  }
}