import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/call_models.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, index) => Column(
        children: [
          Divider(
            height: 0.1,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(callData[index].pic),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  callData[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(callData[index].type == 0 ? Icons.phone : Icons.videocam)
              ],
            ),
            subtitle: Text(
              callData[index].time,
              style: TextStyle(fontSize: 11.0),
            ),
          ),
        ],
      ),
    );
  }
}
