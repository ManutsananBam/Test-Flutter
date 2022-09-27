import 'package:flutter/material.dart';

class FooterButton extends StatefulWidget {
  const FooterButton({super.key});

  @override
  State<FooterButton> createState() => _FooterButtonState();
}

class _FooterButtonState extends State<FooterButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: "",
          ),
        ],
      ),
    );
  }
}
