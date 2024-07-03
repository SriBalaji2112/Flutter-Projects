import 'package:flutter/material.dart';
import 'package:whatsapp_ui/tabs/calls.dart';
import 'package:whatsapp_ui/tabs/camera.dart';
import 'package:whatsapp_ui/tabs/chats.dart';
import 'package:whatsapp_ui/tabs/status.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075e54),
          title: Text(
            "Whatsapp",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
              Tab(
                child: Text(
                  "Chats",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  "Status",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  "Calls",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Camera(),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
