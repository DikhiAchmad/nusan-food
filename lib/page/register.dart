import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nusanfood/page/homepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;

    return Scaffold(
        body: Center(
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
                  controller: namaController,
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
                  controller: emailController,
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
                  controller: passwordController,
                  obscureText: true,
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
                      onPressed: signUp,
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text("sudah punya akun? Login.",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w900)),
                    )),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Future signUp() async {
    final String? nama = namaController.text;
    final String? email = emailController.text;
    final String? password = passwordController.text;

    final _user = FirebaseFirestore.instance.collection('user').doc(email);

    if (nama != null && email != null && password != null) {
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: email.trim(),
          password: password.trim(),
        )
            .then((result) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
            (Route<dynamic> route) => false,
          );
        });

        final passwordToHash = password;
        final bytesToHash = utf8.encode(passwordToHash);
        final md5Digest = md5.convert(bytesToHash);
        final json = {
          "userId": FirebaseAuth.instance.currentUser?.uid,
          "nama": nama,
          "email": email,
          "password": md5Digest.toString(),
          "created_at": DateTime.now(),
          "last_login": DateTime.now(),
        };

        await _user.set(json);
      } on FirebaseAuthException catch (e) {
        return e.message;
      }
    }
  }
}
