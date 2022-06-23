import 'package:flutter/material.dart';
import 'package:nusanfood/page/edit.dart';
import 'package:nusanfood/page/homepage.dart';
import 'package:nusanfood/page/pilihan.dart';
import 'package:nusanfood/page/tambah.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:nusanfood/firebase/sign_in.dart';
import 'package:nusanfood/page/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Resep extends StatelessWidget {
  const Resep({Key? key, required this.dokumenid}) : super(key: key);
  final String dokumenid;
  @override
  Widget build(BuildContext context) {
    CollectionReference makanan =
        FirebaseFirestore.instance.collection('makanan');
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
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            backgroundColor: const Color(0xffFF8A00),
            child: const Icon(Icons.delete),
            onPressed: () async {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const HomeScreen();
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Berhasil Menghapus Data')));
              await FirebaseFirestore.instance
                  .collection('makanan')
                  .doc(dokumenid)
                  .delete();
            },
            heroTag: null,
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            tooltip: '',
            child: const Icon(Icons.app_registration_rounded),
            backgroundColor: const Color(0xffFF8A00),
            onPressed: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Edit(
                      dokumenid: dokumenid,
                    );
                  },
                ),
              )
            },
            heroTag: null,
          )
        ]),
        body: FutureBuilder<DocumentSnapshot>(
          future: makanan.doc(dokumenid).get(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text("Something went wrong");
            }

            if (snapshot.hasData && !snapshot.data!.exists) {
              return const Text("Document does not exist");
            }

            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data =
                  snapshot.data!.data() as Map<String, dynamic>;
              return ListView(children: [
                Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.topCenter,
                        image: NetworkImage(data['image']),
                        fit: BoxFit.cover),
                  ),
                  child: null,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(data['nama_makanan'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900))),
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(data['resep'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w900))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.timelapse,
                      color: Colors.black,
                      size: 25,
                    ),
                    Text("${data['estimasi_waktu'].toString()} jam")
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
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(data['bahan'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
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
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(data['langkah_langkah'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w900))),
              ]);
            }
            return const Text("loading");
          },
        ));
  }
}
