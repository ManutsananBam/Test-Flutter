import 'package:flutter/material.dart';
import 'package:my_app/menu.dart';

class DiscoveryEvents extends StatelessWidget {
  const DiscoveryEvents({super.key});

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
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 10.0),
              child: Text(
                "Discovery",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                child: Icon(Icons.room)),
            Padding(
                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                child: Icon(Icons.chat)),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: SizedBox(
            width: 378,
            height: 33,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  labelText: "Search"),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  child: const Text("Events")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  child: const Text("Places")),
            ),
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
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: const [
              Text(
                "Popular",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Expanded(
                child: Image.network(
                    "https://cdn.britannica.com/49/161649-050-3F458ECF/Bernese-mountain-dog-grass.jpg?q=60"),
              ),
              Expanded(
                child: Image.network(
                    "https://www.rover.com/blog/wp-content/uploads/2019/01/6342530545_45ec8696c8_b.jpg"),
              ),
              Expanded(
                child: Image.network(
                    "https://www.scotsman.com/webimg/b25lY21zOjVhYjFhNjYyLWVjZTAtNDhhNC1hYWQ0LTFiMTIxYTI5MDZjZDoyOTFlMWE0ZC1iNTEwLTQ0NmMtYWM0Zi1hNDQxNzYzZmM5ZDQ=.jpg?crop=61:45,smart&width=800"),
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
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0, bottom: 8.0),
      child: Row(
        children: const [
          Text("Nearby",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Icon(Icons.room),
          Text("Location", style: TextStyle(fontSize: 12)),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 10.0, right: 10.0, bottom: 8.0),
            child: Text("ดูทั้งหมด", style: TextStyle(fontSize: 12)),
          ),
        ],
      ),
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
                      "https://www.akc.org/wp-content/uploads/2021/09/Finnish-Lapphund-shutterstock_1038964219.jpg")),
              Expanded(
                  child: Image.network(
                      "https://www.fourpaws.com/-/media/Project/OneWeb/FourPaws/Images/articles/family-matters/puppy-prep-cheat-sheet/puppy-australian-shepherd-running.jpg")),
              Expanded(
                  child: Image.network(
                      "https://vitapet.com/media/sz1czkya/benefits-of-getting-a-puppy-900x600.jpg?anchor=center&mode=crop&width=1240&rnd=132503927246630000")),
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
