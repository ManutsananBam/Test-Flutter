import 'package:flutter/material.dart';
import 'package:my_app/discovery_screen.dart';
import 'package:my_app/discovery_page.dart';
import 'package:my_app/menu.dart';

class DiscoveryPlace extends StatelessWidget {
  const DiscoveryPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
          Expanded(child: ShowPopularView()),
          SelectionLocate(),
          Expanded(child: ShowLocation()),
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
        Row(
          children: [
            TextButton(onPressed: () {}, child: const Text("Events")),
            TextButton(onPressed: () {}, child: const Text("Places")),
            const Spacer(),
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
        ),
      ],
    );
  }
}

class ShowPopularView extends StatelessWidget {
  const ShowPopularView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Popular"),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Expanded(
                child: Image.network(
                    "https://c.files.bbci.co.uk/68DF/production/_109474862_angrycat-index-getty3-3.jpg"),
              ),
              Expanded(
                child: Image.network(
                    "https://www.history.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTg0NTEzNzgyNTMyNDE2OTk5/black-cat-gettyimages-901574784.jpg"),
              ),
              Expanded(
                child: Image.network(
                    "https://humanepro.org/sites/default/files/styles/article_new/public/images/hero/HPO_FactSheet_CatsMouth_Hero.jpg?itok=dncuG5b-"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SelectionLocate extends StatelessWidget {
  const SelectionLocate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text("Nearby"),
        Icon(Icons.room),
        Text("Location"),
        Spacer(),
        Text("ดูทั้งหมด"),
      ],
    );
  }
}

class ShowLocation extends StatelessWidget {
  const ShowLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Expanded(
                  child: Image.network(
                      "https://animals.sandiegozoo.org/sites/default/files/2020-08/black-footed.jpg")),
              Expanded(
                  child: Image.network(
                      "http://static.boredpanda.com/blog/wp-content/uploads/2016/02/most-beautiful-eyes-cat-coby-british-shorthair-3.jpg")),
              Expanded(
                  child: Image.network(
                      "https://i.pinimg.com/originals/75/39/25/7539251004f3784a63b7b72ec888246b.jpg")),
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
