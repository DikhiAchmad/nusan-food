import 'package:flutter/material.dart';

class Resep extends StatelessWidget {
  const Resep({Key? key}) : super(key: key);

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
      Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text("Soto Babat",
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.w900))),
      Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text("Resep Sumanto",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.w900))),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.timelapse,
            color: Colors.black,
            size: 25,
          ),
          Text("5 jam")
        ],
      ),
      Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text("bahan-bahan",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.w900))),
      Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
              "Daging ayam, potong dadu: 200 gram Kaldu ayam cair: 300 ml Susu cair: 200 ml Wortel, potong dadu: 1 buah Kentang, potong dadu: 1 buah",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w900))),
      Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text("langkah-langkah",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.w900))),
      Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
              "Daging ayam, potong dadu: 200 gram Kaldu ayam cair: 300 ml Susu cair: 200 ml Wortel, potong dadu: 1 buah Kentang, potong dadu: 1 buah",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w900))),
    ]);
  }
}
