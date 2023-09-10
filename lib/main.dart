import 'package:flutter/material.dart';
import './slack_profile.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Slack Profile',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/mySlack.png'),
              ),
              const Text(
                'One_Marvellous',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Josefin Sans',
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SlackProfile(),
                      ),
                    );
                  },
                  child: const Text(
                    'Open GitHub',
                    style: TextStyle(
                        fontFamily: 'Josefin Sans', color: Colors.black),
                  )),
            ],
          ),
        )),
      ),
    );
  }
}
