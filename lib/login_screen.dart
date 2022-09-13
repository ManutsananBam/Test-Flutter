import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
          children: <Widget>[
            Image.network(
              "https://www.k9web.com/wp-content/uploads/2020/11/siberian-husky-portrait.jpg",
              height: 200,
              width: 200,
            ),
            Image.network(
              "https://www.shadalane.com/images/golden-puppies/shadalane-golden-retriever-puppies1lg.jpg",
              height: 200,
              width: 200,
            ),
            Image.network(
              "https://1417094351.rsc.cdn77.org/articles/3717/3716410/thumbnail/large.gif?1",
              height: 200,
              width: 200,
            ),
          ],
        ),
      );
  }
}
