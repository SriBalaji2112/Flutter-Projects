import 'package:flutter/material.dart';

void main() {
  runApp(MyTextWidgets());
}

class MyTextWidgets extends StatefulWidget {
  @override
  State<MyTextWidgets> createState() => _MyTextWidgetsState();
}

class _MyTextWidgetsState extends State<MyTextWidgets> {
  @override
  Widget build(BuildContext context) {
    double floating_button_clicked = 0.0;
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: Text(
                "My Text Widgets",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text("Container"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                )
              ],
            ),
            Column(
              children: [
                Text("Row and Column Container"),
                Text("Floating Button $floating_button_clicked")
              ],
            ),
            FloatingActionButton(
              child: Text("F"),
              backgroundColor: Colors.green,
              splashColor: Colors.lightGreen,
              onPressed: () {
                setState(() {
                  floating_button_clicked += 1;
                });
                print("Floating Button Clicked");
              },
            ),
            Text("ButtonBar"),
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  child: Text("Hello"),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Text("E"),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Text("H"),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text("Text Button"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Elevated Button");
              },
              child: Text(
                "Elevated Button",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("OutLinedButton"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Image(
                image: AssetImage('images/balaji.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Text("Button Bar"),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      print("Home Button Clicked");
                    },
                    icon: Icon(Icons.home)),
                IconButton(
                    onPressed: () {
                      print("People Button Clicked");
                    },
                    icon: Icon(Icons.people)),
                IconButton(
                    onPressed: () {
                      print("Add Button Clicked");
                    },
                    icon: Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      print("Search Button Clicked");
                    },
                    icon: Icon(Icons.search)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
