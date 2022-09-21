import 'package:flutter/material.dart';
import 'package:my_app/menu.dart';

class DiscoveryPage extends StatelessWidget {
  const DiscoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
          Expanded(child: ShowDetailEvents()),
          Footer(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text("Discovery"),
            Spacer(),
            Icon(Icons.room),
            Icon(Icons.chat),
          ],
        ),
        const TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: "Search"),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Menu();
                  },
                ),
              );
            },
            child: const Text("Menu")),
      ],
    );
  }
}

class ShowDetailEvents extends StatelessWidget {
  const ShowDetailEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                  height: 194,
                  width: 366,
                  child: Expanded(
                    child: Image.network(
                        "https://cdn.unenvironment.org/2021-07/Tiger_shutterstock.jpeg"),
                  )),
              Row(
                children: const [
                  Text("Tiger"),
                  Spacer(),
                  Icon(Icons.bookmark),
                  Icon(Icons.favorite)
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.room),
                  Text("... กม."),
                  Spacer(),
                  Icon(Icons.music_note),
                  Icon(Icons.bar_chart)
                ],
              ),
              const Text(
                  "สาวๆ ห้ามพลาดกับอีเว้นท์ Lady Night ที่มีมิกส์ฟรีให้สาวโสดตลอดทั้งคืน พร้อมดนตรีที่ถูกใจ..."),
              SizedBox(
                  height: 194,
                  width: 366,
                  child: Expanded(
                    child: Image.network(
                        "https://lumiere-a.akamaihd.net/v1/images/tlk_listicle_1_62b7eec6.jpeg?region=0,0,1500,844"),
                  )),
              Row(
                children: const [
                  Text("Tiger"),
                  Spacer(),
                  Icon(Icons.bookmark),
                  Icon(Icons.favorite)
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.room),
                  Text("... กม."),
                  Spacer(),
                  Icon(Icons.music_note),
                  Icon(Icons.bar_chart)
                ],
              ),
              const Text(
                  "ปาร์ตี้ฟูลมูนที่โด่งดังไปทั่วโลก หากคุณอยากได้ประสบการณ์ที่ลืมไม่ลง ห้ามพลาดกับ..."),
            ],
          ),
        ),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Icon(Icons.search),
            Spacer(),
            Icon(Icons.videogame_asset),
            Spacer(),
            Icon(Icons.home),
            Spacer(),
            Icon(Icons.notifications),
            Spacer(),
            Icon(Icons.circle),
          ],
        ),
      ],
    );
  }
}
