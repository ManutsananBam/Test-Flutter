import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Yay",
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {

    @override
    Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
            child: Center(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blueAccent,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                    labelText: '  Email or Phone'
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Center(
                child:  TextField(
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                    labelText: '  Password'
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: ElevatedButton(
                    child: Text('Login'),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
                      ),
                    ),
                    onPressed: () {
                      print('Pressed');
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




