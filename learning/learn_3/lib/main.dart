import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  color: Colors.yellow,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  color: Colors.purple,
                ),
              ],
            ),
          ),

          // child: SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       Container(
          //         width: 200,
          //         color: Colors.red,
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Container(
          //         width: 200,
          //         color: Colors.yellow,
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Container(
          //         width: 200,
          //         color: Colors.blue,
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Container(
          //         width: 200,
          //         color: Colors.green,
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Container(
          //         width: 200,
          //         color: Colors.purple,
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
