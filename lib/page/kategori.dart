import 'package:flutter/material.dart';
import 'package:nusanfood/page/kategori-search.dart';
import 'package:nusanfood/widget/categories-widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nusanfood/firebase/sign_in.dart';
import 'package:nusanfood/page/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Kategori extends StatelessWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    final Stream<QuerySnapshot> _kategori =
        FirebaseFirestore.instance.collection('kategori').snapshots();
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
                Navigator.pop(context);
              },
             
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
                  // 2031710152 Rosita Ayu Tri Lestari
                  GestureDetector(
                   onTap: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          title: const Text(
                            'Log out',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff3F3F3F),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          content: const Text(
                            'Are you sure?',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff3F3F3F),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          actions: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                      width: 60,
                                      height: 50,
                                      margin: const EdgeInsets.only(
                                        bottom: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xffFF8A00),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'No',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff3F3F3F),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      )),
                                ),
                                const SizedBox(width: 16),
                                InkWell(
                                  onTap: () {
                                    signOutGoogle();
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(builder: (context) {
                                      return const LoginPage();
                                    }), ModalRoute.withName('/'));
                                  },
                                  child: Container(
                                      width: 60,
                                      height: 50,
                                      margin: const EdgeInsets.only(
                                        bottom: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color(0xffFF8A00),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Yes',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff3F3F3F),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );

                      child:
                      Row(
                        children: const [
                          Icon(Icons.logout, size: 35),
                          SizedBox(width: 16),
                          Text(
                            'Log out',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Raleway',
                              color: Color.fromARGB(255, 82, 82, 82),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ]),
        body: Container(
          color: Colors.white,
          height: double.maxFinite,
          child: ListView(children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Kategori".toUpperCase(),
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w900))
                ],
              ),
            ),
            StreamBuilder<QuerySnapshot>(
              stream: _kategori,
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text("Loading");
                }
                return GridView.count(
                  crossAxisCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 0.8,
                  children: snapshot.data!.docs
                      .map((DocumentSnapshot document) {
                        Map<String, dynamic> data =
                            document.data()! as Map<String, dynamic>;
                        return Container(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SearchByKategori(
                                        kategori: data['nama_kategori']);
                                  },
                                ),
                              );
                            },
                            child: SizedBox(
                              width: 175,
                              height: 200,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.bottomCenter,
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          alignment: Alignment.topCenter,
                                          image: NetworkImage(data['image'],
                                              scale: 0.1),
                                          fit: BoxFit.cover),
                                    ),
                                    child: null,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "Makanan ${data['nama_kategori']}",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      })
                      .toList()
                      .cast(),
                );
              },
            )
          ]),
        ));
  }
}
