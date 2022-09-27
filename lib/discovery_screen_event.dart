import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_app/discovery_all_place.dart';
import 'discovery_place.dart';

class DiscoveryEvents extends StatelessWidget {
  const DiscoveryEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: ShowPopularView()),
          const SelectionLocate(),
          const Expanded(child: ShowLocation()),
        ],
      ),
    );
  }
}

class ShowPopularView extends StatelessWidget {
  ShowPopularView({super.key});

  var items = [
    "https://i.ytimg.com/vi/ZzSG6l3jzk0/maxresdefault.jpg",
    "https://cdn.zipeventapp.com/blog/2022/06/2022-06-19_16-24-45_zip-zommarie-concert-01.png",
    "https://images.workpointnews.com/workpointnews/2022/08/31162545/1661937942_58155_NON.png",
  ];

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
        CarouselSlider(
          options: CarouselOptions(
              height: 180.0,
              aspectRatio: 206 / 387,
              viewportFraction: 1,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal),
          items: items.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return InkWell(
                  child: Image.network(i),
                  onTap: () => {
                    if (items.indexOf(i) == 0)
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DiscoveryAllPlace();
                            },
                          ),
                        ),
                      }
                    else if (items.indexOf(i) == 1)
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DiscoveryPlace();
                            },
                          ),
                        ),
                      }
                  },
                );
              },
            );
          }).toList(),
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
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 10),
            SizedBox(
              width: 156,
              height: 156,
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                        "https://img.freepik.com/premium-photo/concert-crowd-music-fanclub-hand-using-cellphone-taking-video-record-live-stream_41418-3380.jpg?w=2000"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Cocktail Concert",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "0.3 km",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 18),
            Container(
              width: 156,
              height: 156,
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                        "https://edmmaniac.com/wp-content/uploads/2020/12/decibeloa19_stage.jpg"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("EDM Night x DJ Ice",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("1.6 km"),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 18),
            SizedBox(
              width: 156,
              height: 156,
              child: Column(
                children: [
                  Expanded(
                      child: Image.network(
                          "https://images.pexels.com/photos/1190297/pexels-photo-1190297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("Dance...",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("3.2 km"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
