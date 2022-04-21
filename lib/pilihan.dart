import 'package:flutter/material.dart';

class Pilihan extends StatelessWidget {
  const Pilihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        alignment: Alignment.center,
        width: 150,
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage("assets/images/soto.png"),
              fit: BoxFit.cover),
        ),
        child: null,
      ),
      TextButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/images/nasip.png"),
                      fit: BoxFit.cover),
                ),
                child: null,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("soto babat",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w900)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.timelapse,
                        color: Colors.black,
                        size: 25,
                      ),
                      Text("5 jam")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.thumb_up,
                        color: Colors.black,
                        size: 25,
                      ),
                      Text("5")
                    ],
                  ),
                  const Text("Resep Sutini",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w900)),
                ],
              ),
            ],
          ),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/images/nasip.png"),
                      fit: BoxFit.cover),
                ),
                child: null,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("soto babat",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w900)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.timelapse,
                        color: Colors.black,
                        size: 25,
                      ),
                      Text("5 jam")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.thumb_up,
                        color: Colors.black,
                        size: 25,
                      ),
                      Text("5")
                    ],
                  ),
                  const Text("Resep Sutini",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w900)),
                ],
              ),
            ],
          ),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/images/nasip.png"),
                      fit: BoxFit.cover),
                ),
                child: null,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("soto babat",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w900)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.timelapse,
                        color: Colors.black,
                        size: 25,
                      ),
                      Text("5 jam")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.thumb_up,
                        color: Colors.black,
                        size: 25,
                      ),
                      Text("5")
                    ],
                  ),
                  const Text("Resep Sutini",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w900)),
                ],
              ),
            ],
          ),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/images/nasip.png"),
                      fit: BoxFit.cover),
                ),
                child: null,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("soto babat",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w900)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.timelapse,
                        color: Colors.black,
                        size: 25,
                      ),
                      Text("5 jam")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.thumb_up,
                        color: Colors.black,
                        size: 25,
                      ),
                      Text("5")
                    ],
                  ),
                  const Text("Resep Sutini",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w900)),
                ],
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
