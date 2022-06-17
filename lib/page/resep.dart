import 'package:flutter/material.dart';
import 'package:nusanfood/page/homepage.dart';
import 'package:nusanfood/page/pilihan.dart';
import 'package:nusanfood/page/tambah.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:nusanfood/firebase/sign_in.dart';
import 'package:nusanfood/page/login.dart';

class Resep extends StatelessWidget {
  const Resep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const HomeScreen();
                  },
                ),
              );
            },
            // 2031710159 Dikhi Achmad Dani
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: const Icon(
                      Icons.favorite,
                      color: Color(0xffFF8A00),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                GestureDetector(
                  onTap: () {
                    signOutGoogle();
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }), ModalRoute.withName('/'));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: const Icon(
                      Icons.door_back_door_outlined,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const Tambah();
              },
            ),
          );
        },
        backgroundColor: Color(0xffFF8A00),
        tooltip: '',
        child: const Icon(Icons.app_registration_rounded),
      ),
      body: ListView(children: [
        Container(
          alignment: Alignment.center,
          width: 150,
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: NetworkImage("https://picsum.photos/200"),
                fit: BoxFit.cover),
          ),
          child: null,
        ),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text("Nasi Padang",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900))),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text("Resep Sutini",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.w900))),
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
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text("bahan-bahan",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.w900))),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
                "Daging ayam, potong dadu: 200 gram Kaldu ayam cair: 300 ml Susu cair: 200 ml Wortel, potong dadu: 1 buah Kentang, potong dadu: 1 buah",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w900))),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text("langkah-langkah",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.w900))),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
                "Daging ayam, potong dadu: 200 gram Kaldu ayam cair: 300 ml Susu cair: 200 ml Wortel, potong dadu: 1 buah Kentang, potong dadu: 1 buah",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w900))),
      ]),
    );
  }
}
