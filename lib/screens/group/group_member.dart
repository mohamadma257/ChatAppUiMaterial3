import 'package:chat_material3/screens/group/group_edit.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GroupMemberScreen extends StatefulWidget {
  const GroupMemberScreen({super.key});

  @override
  State<GroupMemberScreen> createState() => _GroupMemberScreenState();
}

class _GroupMemberScreenState extends State<GroupMemberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group members"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditGroupScreen(),
                  ));
            },
            icon: Icon(Iconsax.user_edit),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Name"),
                    subtitle: Text("Admin"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Iconsax.user_tick)),
                        IconButton(onPressed: () {}, icon: Icon(Iconsax.trash)),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
