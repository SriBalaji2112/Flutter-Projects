import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/user_models.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userData.length,
      itemBuilder: (context, index) => new Column(
        children: [
          new Divider(
            height: 0.1,
          ),
          new ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(userData[index].pic),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  userData[index].name,
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  userData[index].time,
                  style: TextStyle(fontSize: 11.0, color: Colors.grey),
                )
              ],
            ),
            subtitle: Text(
              userData[index].msg,
            ),
          )
        ],
      ),
    );
  }
}
