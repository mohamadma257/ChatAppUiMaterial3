import 'package:chat_material3/screens/group/group_screen.dart';
import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GroupScreen()),
              ),
          leading: CircleAvatar(
            child: Text("G"),
          ),
          title: Text("Group Name"),
          subtitle: Text("Last Message"),
          trailing: Badge(
            padding: EdgeInsets.symmetric(horizontal: 12),
            label: Text("3"),
            largeSize: 30,
          )),
    );
  }
}
