import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nusanfood/page/kategori-search.dart';

class KategoriWidget extends StatelessWidget {
  const KategoriWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _kategori =
        FirebaseFirestore.instance.collection('kategori').snapshots();
    return StreamBuilder<QuerySnapshot>(
      stream: _kategori,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          height: 220.0,
          width: 200,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: snapshot.data!.docs
                .map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  return TextButton(
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
                                      fit: BoxFit.cover,
                                      image: NetworkImage(data['image'],
                                          scale: 0.1))),
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
                      ));
                })
                .toList()
                .cast(),
          ),
        );
      },
    );
  }
}
