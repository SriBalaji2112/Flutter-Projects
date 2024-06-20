import 'dart:math';

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
  bool image_visibility = true;
  double targetImageValue = 100;
  List<bool> isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("Wrap Widgets"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Center(
                  child: Wrap(
                    spacing: 10.0,
                    runSpacing: 15.0,
                    children: List.generate(
                      15,
                      (index) => const Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Icon(Icons.person),
                          radius: 100.0,
                        ),
                        label: Text("Map"),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Visibility Widgets"),
              TextButton(
                  onPressed: () {
                    setState(() {
                      image_visibility = !image_visibility;
                    });
                  },
                  child: Text("Show / Hide")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/image1.jpg',
                    height: 100,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Visibility(
                    visible: image_visibility,
                    child: Image.asset(
                      'images/image2.jpg',
                      height: 100,
                    ),
                  ),
                ],
              ),
              // Vertical Divider
              SizedBox(
                height: 20,
              ),
              Text("Vertical Divider"),
              Container(
                padding: EdgeInsets.all(10),
                height: 130,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.orange,
                      ),
                    ),
                    VerticalDivider(
                      thickness: 3,
                      width: 30.0,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orange,
                      ),
                    )
                  ],
                ),
              ),

              // Tween Animatiion Builder
              SizedBox(
                height: 20,
              ),
              Text("Tween Animation Builder"),
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: targetImageValue),
                duration: Duration(milliseconds: 500),
                builder: (context, value, child) => IconButton(
                  onPressed: () {
                    setState(() {
                      targetImageValue = targetImageValue == 100 ? 200 : 100;
                    });
                  },
                  icon: Icon(Icons.flutter_dash),
                  iconSize: value,
                  color: Colors.orange,
                ),
              ),

              // Transform Widgets
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Transform Widgets"),
                      Container(
                        height: 100,
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationZ(pi * 1 / 4),
                          child: Image.asset("images/image1.jpg"),
                        ),
                      ),
                    ],
                  ),

                  // ToolTip Widgets
                  Column(
                    children: [
                      Text("ToolTip Widgets"),
                      Container(
                        height: 100,
                        child: Tooltip(
                          message: "This is an image",
                          child: Image.asset("images/image1.jpg"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // ToggleButton Widgets
              SizedBox(
                height: 20,
              ),
              Text("ToggleButton Widgets"),
              ToggleButtons(
                children: [
                  Icon(Icons.home),
                  Icon(Icons.settings),
                  Icon(Icons.person),
                ],
                onPressed: (index) => setState(() {
                  isSelected[index] = !isSelected[index];
                }),
                isSelected: isSelected,
                selectedColor: Colors.orange,
              ),
              // ToggleButton Widgets
              SizedBox(
                height: 20,
              ),
              Text("TextSpan Widgets"),
              Text.rich(
                TextSpan(
                  text: "Sri ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: "Balaji",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
