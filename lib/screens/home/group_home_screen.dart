import 'package:chat_material3/screens/group/create_group.dart';
import 'package:chat_material3/screens/group/widgets/group_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GroupHomeScreen extends StatefulWidget {
  const GroupHomeScreen({super.key});

  @override
  State<GroupHomeScreen> createState() => _GroupHomeScreenState();
}

class _GroupHomeScreenState extends State<GroupHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateGroupScreen(),
                ));
          },
          child: Icon(Iconsax.message_add_1),
        ),
        appBar: AppBar(
          title: Text("Group"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return GroupCard();
                },
              ))
            ],
          ),
        ));
  }
}
