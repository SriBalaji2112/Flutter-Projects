import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _value = false;
  Color bulb_color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.orange,
        primaryColor: Colors.red,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabAlignment: TabAlignment.fill,
              tabs: [
                Tab(
                  text: "Home",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "Settings",
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  text: "Person",
                  icon: Icon(Icons.person),
                ),
              ],
            ),
            title: Text("Flutter TabBar"),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    SwitchListTile(
                      hoverColor: bulb_color,
                      activeColor: bulb_color,
                      title: Text(
                        "Light On",
                        style: TextStyle(color: bulb_color),
                      ),
                      value: _value,
                      onChanged: (bool value) {
                        setState(() {
                          _value = !_value;
                          bulb_color =
                              _value == true ? Colors.yellow : Colors.white;
                        });
                      },
                      secondary: Icon(
                        Icons.lightbulb_outline,
                        color: bulb_color,
                      ),
                    ),
                    Switch(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                    ElevatedButton(
                      child: Text("Show SnackBar"),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Flutter Mapp"),
                            action: SnackBarAction(
                              label: 'undo',
                              onPressed: () {},
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.redAccent,
                child: Icon(Icons.settings),
              ),
              Container(
                color: Colors.orange,
                child: Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
