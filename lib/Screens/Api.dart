import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:http/http.dart';

class api extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => apiState();
}

class apiState extends State<api> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const apiget()));
                  },
                  child: const Text('Api_Get')),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Postapi()));
                  },
                  child: const Text('Api_Post')),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text('Api_Delete')),
            ],
          ),
        ),
      ),
    );
  }
}

/* # API  GET  # */

class apiget extends StatefulWidget {
  const apiget({super.key});
  @override
  State<StatefulWidget> createState() {
    return apigetState();
  }
}

String stringResponse = '';
Map mapresponse = {};

class apigetState extends State<apiget> {
  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users"));
    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
        mapresponse = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('API_Get')),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
              width: 200,
              child: Column(
                children: [
                  Container(
                      color: Colors.blue.shade100,
                      child: Text(stringResponse.toString())),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    mapresponse['data'][5]['id'].toString(),
                  ),
                  Text(
                    mapresponse['data'][5]['email'].toString(),
                  ),
                  Text(mapresponse['data'][5]['first_name'].toString()),
                  Text(mapresponse['data'][5]['last_name'].toString()),
                  const SizedBox(
                    height: 10,
                  ),
                  Image(
                    image: NetworkImage('${mapresponse['data'][5]['avatar']}'),
                  ),
                  Text(mapresponse['support']['url'].toString()),
                  Text(
                    mapresponse['support']['text'].toString(),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

/* # POST API # */

class Postapi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PostapiState();
  }
}

class PostapiState extends State<Postapi> {
  void login(String email, password) async {
    try {
      Response response =
          await post(Uri.parse('https://reqres.in/api/register'), body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        var data = json.decode(response.body.toString());
        print(data['token']);
        print('SUCCESS');
      } else {
        print('Filed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post_Api'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                autofillHints: Characters.empty,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Email...',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordController,
                keyboardType: TextInputType.number,
                autofillHints: Characters.empty,
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Password...',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    login(emailController.text.toString(),
                        passwordController.text.toString());
                    showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                              title: Text('You Have Successfully Log_In'),
                              backgroundColor: Colors.blue,
                            ));
                  },
                  child: const Text('Log_In'))
            ],
          ),
        ),
      ),
    );
  }
}

