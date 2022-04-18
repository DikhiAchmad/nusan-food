import 'package:flutter/material.dart';

class pilihan extends StatelessWidget {
  const pilihan ({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
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
    Padding(padding: EdgeInsets.only(top: 10, bottom: 10), child: Text ("3 resep",
    textAlign: TextAlign.center,
                style: 
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w900))
      ),
      Padding(padding: EdgeInsets.only(top: 10, bottom: 10), child: Text ("soto babat",
    textAlign: TextAlign.center,
                style: 
                    const TextStyle (color: Colors.red,fontSize: 15, fontWeight: FontWeight.w900))
      ),
      
         GridView.count(
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
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/images/banner.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: null,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'makanan\njawa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ]
                ),
              ),
            ),
          ),
      
   
        
    ],
    ),
    ]);
  }

  
}