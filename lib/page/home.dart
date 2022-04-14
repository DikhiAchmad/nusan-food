import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search',
                contentPadding:
                    const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Kategori',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: null,
                  child: Text('view all',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 220.0,
            width: 200,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TextButton(
                  onPressed: null,
                  child: SizedBox(
                    width: 175,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage("assets/images/banner.jpg"),
                                fit: BoxFit.cover),
                          ),
                          child: null,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'makanan\njawa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: SizedBox(
                    width: 175,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage("assets/images/banner.jpg"),
                                fit: BoxFit.cover),
                          ),
                          child: null,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'makanan\njawa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: SizedBox(
                    width: 175,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage("assets/images/banner.jpg"),
                                fit: BoxFit.cover),
                          ),
                          child: null,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'makanan\njawa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: SizedBox(
                    width: 175,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage("assets/images/banner.jpg"),
                                fit: BoxFit.cover),
                          ),
                          child: null,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'makanan\njawa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: SizedBox(
                    width: 175,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage("assets/images/banner.jpg"),
                                fit: BoxFit.cover),
                          ),
                          child: null,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'makanan\njawa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Rekomendasi',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: null,
                  child: Text('view all',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            height: 220.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TextButton(
                  onPressed: null,
                  child: SizedBox(
                    width: 175,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage("assets/images/banner.jpg"),
                                fit: BoxFit.cover),
                          ),
                          child: null,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'makanan\njawa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: SizedBox(
                    width: 175,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage("assets/images/banner.jpg"),
                                fit: BoxFit.cover),
                          ),
                          child: null,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'makanan\njawa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: SizedBox(
                    width: 175,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage("assets/images/banner.jpg"),
                                fit: BoxFit.cover),
                          ),
                          child: null,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'makanan\njawa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: SizedBox(
                    width: 175,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage("assets/images/banner.jpg"),
                                fit: BoxFit.cover),
                          ),
                          child: null,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'makanan\njawa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: SizedBox(
                    width: 175,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage("assets/images/banner.jpg"),
                                fit: BoxFit.cover),
                          ),
                          child: null,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'makanan\njawa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
