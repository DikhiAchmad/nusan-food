import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/icon_park_outline.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const MyHomePage(title: 'NusanFood'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(widget.title,
            style: const TextStyle(
                color: Color(0xffFF5C5C), fontWeight: FontWeight.w900)),
        actions: <Widget>[
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 5, left: 15, right: 15),
                  decoration: BoxDecoration(
                      color: const Color(0xffFF8A00),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: const Text('add recipe',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900)),
                ),
              ))
        ],
      ),
      body: ListView(
        children: [
          Container(
              height: 150,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: const DecorationImage(
                  image: AssetImage("assets/images/banner.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: null),
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
                        SizedBox(height: 10),
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
                        SizedBox(height: 10),
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
                        SizedBox(height: 10),
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
                        SizedBox(height: 10),
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
                        SizedBox(height: 10),
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
                Text('may u like',
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
                        SizedBox(height: 10),
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
                        SizedBox(height: 10),
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
                        SizedBox(height: 10),
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
                        SizedBox(height: 10),
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
                        SizedBox(height: 10),
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
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Iconify(
                AntDesign.home,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Iconify(
                Bx.category,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Iconify(
                IconParkOutline.chef_hat,
                color: null,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
