import 'package:flutter/material.dart';
import 'package:my_app/discovery_screen.dart';

class DiscoveryAllPlace extends StatelessWidget {
  const DiscoveryAllPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
          ShowPicture(),
          ShowDetail(),

        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.arrow_back),
        Spacer(),
        Icon(Icons.room),
        Icon(Icons.chat)
      ],
    );
  }
}

class ShowPicture extends StatelessWidget {
  const ShowPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 400,
      child: ColoredBox(color: Colors.brown,),
    );
  }
}

class ShowDetail extends StatelessWidget {
  const ShowDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );

  }



}