import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: "Masukkan nama masakan",
            labelText: "Nama masakan",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "Masukkan link gambar masakan",
            labelText: "Link gambar",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "Masukkan estimasi waktu masak",
            labelText: "Estimasi waktu masak",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "Masukkan resep masakan",
            labelText: "Resep",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
      Container(
          width: 50,
          child: RaisedButton(
              child: Text(
                "edit",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.orange,
              onPressed: () {})),
    ]);
  }
}
