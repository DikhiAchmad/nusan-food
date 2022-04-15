import 'package:flutter/material.dart';
import 'package:nusanfood/page/home.dart';
import 'package:nusanfood/page/kategori.dart';
import 'package:nusanfood/page/favorite.dart';
import 'package:nusanfood/page/tambah.dart';
import 'package:nusanfood/page/edit.dart';
import 'package:nusanfood/page/resep.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nusan Food',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: const Color(0xffFF5C5C),
        textTheme: GoogleFonts.nunitoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  final pages = [
    Home(),
    const Kategori(),
    const Favorite(),
    const Resep(),
    const Tambah(),
    const Edit(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 65,
          title: GradientText(
            "NusanFood",
            style: const TextStyle(fontWeight: FontWeight.w900),
            colors: const [
              Color(0xffFF8A00),
              Color(0xffFF5C5C),
            ],
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(right: 20),
                child: const Icon(
                  Icons.account_circle_rounded,
                  color: Color(0xffFF8A00),
                ),
              ),
            ),
          ]),
      body: pages[pageIndex],
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Color(0xffFF8A00),
        tooltip: '',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.home_filled,
                      color: Colors.black,
                      size: 25,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.widgets_rounded,
                      color: Colors.black,
                      size: 25,
                    )
                  : const Icon(
                      Icons.widgets_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.black,
                      size: 25,
                    )
                  : const Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      Icons.food_bank,
                      color: Colors.black,
                      size: 25,
                    )
                  : const Icon(
                      Icons.food_bank_outlined,
                      color: Colors.black,
                      size: 25,
                    ),       
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              icon: pageIndex == 4
                  ? const Icon(
                      Icons.add_box,
                      size: 25,
                    )
                  : const Icon(
                      Icons.add_box_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 5;
                });
              },
              icon: pageIndex == 5
                  ? const Icon(
                      Icons.mode_edit,
                      color: Colors.black,
                      size: 25,
                    )
                  : const Icon(
                      Icons.mode_edit_outline,
                      color: Colors.black,
                      size: 25,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
