import 'package:flutter/material.dart';
import 'package:my_app/discovery_page.dart';
import 'package:my_app/footer.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  String _CurrentTab = "Places";

  @override
  void Events() {
    setState(() {
      _CurrentTab = "Events";
    });
  }

  @override
  void Places() {
    setState(() {
      _CurrentTab = "Places";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: const [
                  Text(
                    "Discovery",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.room),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.chat),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: Events,
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    child: const Text("Events"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: Places,
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    child: const Text("Places"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContent(),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const FooterButton();
                            },
                          ),
                        );
                      },
                      child: const Text("Menu")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContent() {
    if (_CurrentTab == "Events") {
      return const Text("This is Events");
    } else if (_CurrentTab == "Places") {
      return const Text("This is Places");
    } else {
      return Container();
    }
  }
}



// body: Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
//       child: SizedBox(
//         height: 50,
//         child: TextField(
//           decoration: InputDecoration(
//               prefixIcon: const Icon(Icons.search),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               hintText: "Search"),
//         ),
//       ),
//     ),
//     Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: SizedBox(
//         height: 35,
//         width: double.infinity,
//         child: Align(
//           alignment: Alignment.centerLeft,
//           child: TabBar(
//             controller: _tabController,
//             unselectedLabelColor: Colors.blue,
//             indicator: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.blue,
//             ),
//             tabs: [
//               Tab(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: const Align(
//                       alignment: Alignment.center,
//                       child: Text("Events")),
//                 ),
//               ),
//               Tab(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: const Align(
//                       alignment: Alignment.center,
//                       child: Text("Places")),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   ],
// ),
