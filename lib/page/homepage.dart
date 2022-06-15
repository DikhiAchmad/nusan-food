import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nusanfood/firebase/sign_in.dart';
import 'package:nusanfood/page/login.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

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
        body: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: TextField(
                  // controller: searchController,
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
                  children: const [
                    Text('Kategori',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    TextButton(
                      onPressed: null,
                      child: Text('view all',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 220.0,
                width: 200,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    TextButton(
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
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.topCenter,
                                    image: AssetImage("assets/images/soto.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: null,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'makanan\njawa',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
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
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.topCenter,
                                    image:
                                        AssetImage("assets/images/rawon.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: null,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'makanan\nbali',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
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
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.topCenter,
                                    image:
                                        AssetImage("assets/images/gudeg.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: null,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'makanan\nsumatera',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
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
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.topCenter,
                                    image:
                                        AssetImage("assets/images/lalapan.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: null,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'makanan\njawa',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
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
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.topCenter,
                                    image: AssetImage("assets/images/sate.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: null,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'makanan\njawa',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Rekomendasi',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    TextButton(
                      onPressed: null,
                      child: Text('view all',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: 220.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    TextButton(
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
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.topCenter,
                                    image:
                                        AssetImage("assets/images/nasip.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: null,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'makanan\njawa',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
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
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.topCenter,
                                    image: AssetImage("assets/images/soto.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: null,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'makanan\njawa',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
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
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.topCenter,
                                    image:
                                        AssetImage("assets/images/supsang.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: null,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'makanan\njawa',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
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
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.topCenter,
                                    image:
                                        AssetImage("assets/images/padang.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: null,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'makanan\njawa',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
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
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.topCenter,
                                    image: AssetImage("assets/images/soto.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: null,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'makanan\njawa',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

// Padding(
//         padding: const EdgeInsets.all(32),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Signed In as',
//               style: TextStyle(fontSize: 16),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               user.email!,
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 40),
//             ElevatedButton.icon(
//               style: ElevatedButton.styleFrom(
//                 minimumSize: const Size.fromHeight(50),
//               ),
//               icon: const Icon(Icons.arrow_back, size: 32),
//               label: const Text(
//                 'Sign Out',
//                 style: TextStyle(fontSize: 24),
//               ),
//               onPressed: () => FirebaseAuth.instance.signOut(),
//             ),
//           ],
//         ),
//       ),