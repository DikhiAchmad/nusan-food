import 'package:flutter/material.dart';
import 'package:nusanfood/page/homepage.dart';
import 'package:nusanfood/page/resep.dart';
import 'package:nusanfood/page/tambah.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nusanfood/firebase/sign_in.dart';
import 'package:nusanfood/page/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Pilihan extends StatelessWidget {
  const Pilihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    final Stream<QuerySnapshot> _makanan =
        FirebaseFirestore.instance.collection('makanan').snapshots();

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
        child: const Icon(Icons.add),
      ),
      body: Container(
        color: Colors.white,
        height: double.maxFinite,
        child: ListView(
          children: <Widget>[
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
            StreamBuilder<QuerySnapshot>(
                stream: _makanan,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return const Text('Something went wrong');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Text("Loading");
                  }
                  return ListView(
                      shrinkWrap: true,
                      children: snapshot.data!.docs
                          .map((DocumentSnapshot document) {
                            Map<String, dynamic> data =
                                document.data()! as Map<String, dynamic>;

                            return TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const Resep();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(data['nama_makanan'],
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            const Icon(
                                              Icons.timelapse,
                                              color: Colors.black,
                                              size: 25,
                                            ),
                                            Text(
                                                "${data['estimasi_waktu'].toString()} jam")
                                          ],
                                        ),
                                        // Row(
                                        //   mainAxisAlignment:
                                        //       MainAxisAlignment.center,
                                        //   children: const [
                                        //     Icon(
                                        //       Icons.thumb_up,
                                        //       color: Colors.black,
                                        //       size: 25,
                                        //     ),
                                        //     Text("5")
                                        //   ],
                                        // ),
                                        Text("Resep ${data['resep']}",
                                            style: const TextStyle(
                                                color: Colors.red,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w900)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          })
                          .toList()
                          .cast());
                }),
          ],
        ),
      ),
    );
  }
}
