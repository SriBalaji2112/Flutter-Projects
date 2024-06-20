import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "CARD VIEW",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
              Card(
                color: Colors.white,
                elevation: 20.0,
                child: SizedBox(
                  height: 500,
                  width: 300,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 108,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/balaji.jpg'),
                            radius: 100,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Balaji Santhanam',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ),
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        const Text(
                          'I am a Software Developer from தமிழ்நாடு.I am a highly driven individual and I believe in the power of teamwork. I am passionate about learning new technologies and staying up to date with the latest trends.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            onPressed: null,
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.touch_app),
                                  Text("Visit"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
