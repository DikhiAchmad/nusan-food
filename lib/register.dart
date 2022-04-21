import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class register extends StatelessWidget {
  const register({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Register".toUpperCase(),
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Nama Lengkap',
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Jenis Kelamin',
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                //Password TextField
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      padding: const EdgeInsets.only(
                          left: 100, right: 100, top: 20, bottom: 20),
                      color: const Color(0xffFF8A00),
                      onPressed: () {},
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
