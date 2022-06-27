import 'package:flutter/material.dart';
import 'package:nusanfood/page/homepage.dart';
import 'package:nusanfood/page/resep.dart';
import 'package:nusanfood/page/tambah.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nusanfood/firebase/sign_in.dart';
import 'package:nusanfood/page/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ResultSearch extends StatelessWidget {
  const ResultSearch({Key? key, required this.search}) : super(key: key);
  final String search;
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    final Stream<QuerySnapshot> _makanan = FirebaseFirestore.instance
        .collection('makanan')
        .where('nama_makanan', isEqualTo: search)
        .snapshots();

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
      body: ListView(
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

                return Column(
                    children: snapshot.data!.docs
                        .map((DocumentSnapshot document) {
                          Map<String, dynamic> data =
                              document.data()! as Map<String, dynamic>;

                          return TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Resep(
                                      dokumenid: document.id.toString(),
                                    );
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
    );
  }
}
