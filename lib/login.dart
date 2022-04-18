import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class login extends StatelessWidget {
  const login({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(title),
      ),
      body: Center(
        
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.account_circle),
                      labelText: 'email',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                  ),
                  //Password TextField
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text('Login'),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
