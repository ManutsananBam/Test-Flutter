import 'package:flutter/material.dart';
import 'package:my_app/discovery_events.dart';
import 'package:my_app/discovery_place.dart';
import 'package:my_app/discovery_page.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const DiscoveryEvents();
                    },
                  ),
                );
              },
              child: const Text("Events")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const DiscoveryPlace();
                    },
                  ),
                );
              },
              child: const Text("Places")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const DiscoveryPage();
                    },
                  ),
                );
              },
              child: const Text("Page")),
        ],
      ),
    );
  }
}
