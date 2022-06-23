// ignore_for_file: deprecated_member_use
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nusanfood/firebase/sign_in.dart';
import 'package:nusanfood/main.dart';
import 'package:nusanfood/page/homepage.dart';
import 'package:nusanfood/page/register.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                    Text("Login".toUpperCase(),
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                ),
                TextField(
                  controller: emailController,
                  textInputAction: TextInputAction.next,
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
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  obscureText: true,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      padding: const EdgeInsets.only(
                          left: 100, right: 100, top: 15, bottom: 15),
                      color: const Color(0xffFF8A00),
                      onPressed: signIn,
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                // sign in google
                _signInGoogleButton(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text("belum punya akun? Register.",
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

  Widget _signInGoogleButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().then((result) {
          if (result != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const HomeScreen();
                },
              ),
            );
          }
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      highlightElevation: 0,
      borderSide: const BorderSide(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(image: AssetImage("assets/images/google.png"), height: 20),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeScreen()));
      final _user = FirebaseFirestore.instance
          .collection('user')
          .doc(FirebaseAuth.instance.currentUser?.email);

      final json = {
        "last_login": DateTime.now(),
      };

      await _user.update(json);

      return null;
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
