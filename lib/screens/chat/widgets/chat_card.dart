import 'package:chat_material3/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(),
                ),
              ),
          leading: CircleAvatar(),
          title: Text("Name"),
          subtitle: Text("Last Message"),
          trailing: Badge(
            padding: EdgeInsets.symmetric(horizontal: 12),
            label: Text("3"),
            largeSize: 30,
          )),
    );
  }
}
