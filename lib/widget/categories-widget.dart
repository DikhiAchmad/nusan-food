import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
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
        return ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: snapshot.data!.docs
              .map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return GridView.count(
                  crossAxisCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 0.8,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: null,
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
                    ),
                  ],
                );
              })
              .toList()
              .cast(),
        );
      },
    );
  }
}
