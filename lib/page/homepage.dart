import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nusanfood/firebase/sign_in.dart';
import 'package:nusanfood/page/favorite.dart';
import 'package:nusanfood/page/kategori.dart';
import 'package:nusanfood/page/login.dart';
import 'package:nusanfood/page/pilihan.dart';
import 'package:nusanfood/page/result-serach.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:nusanfood/widget/kategori-widget.dart';
import 'package:nusanfood/widget/rekomendasi-widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    TextEditingController searchController = TextEditingController();
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
            backgroundColor: Colors.white,
            actions: <Widget>[
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const Favorite();
                          },
                        ),
                      );
                    },
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
        body: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: searchController,
                  textInputAction: TextInputAction.go,
                  onFieldSubmitted: (value) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ResultSearch(search: searchController.text);
                        },
                      ),
                    );
                  },
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
                margin: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text('Kategori',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const Kategori();
                            },
                          ),
                        );
                      },
                      child: const Text('view all',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              const KategoriWidget(),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text('Makanan',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const Pilihan();
                            },
                          ),
                        );
                      },
                      child: const Text('view all',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              const RekomendasiWidget(),
            ],
          ),
        ));
  }
}
