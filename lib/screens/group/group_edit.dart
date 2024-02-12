import 'package:chat_material3/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditGroupScreen extends StatefulWidget {
  const EditGroupScreen({super.key});

  @override
  State<EditGroupScreen> createState() => _EditGroupScreenState();
}

class _EditGroupScreenState extends State<EditGroupScreen> {
  TextEditingController gNameCon = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gNameCon.text = " Name";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text("Done"),
          icon: Icon(Iconsax.tick_circle),
        ),
        appBar: AppBar(
          title: Text("Edit Group"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: 40,
                        ),
                        Positioned(
                            bottom: -10,
                            right: -10,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add_a_photo)))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CustomField(
                      controller: gNameCon,
                      icon: Iconsax.user_octagon,
                      lable: "Group Name",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Divider(),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text("Add Members"),
                  Spacer(),
                  Text("0"),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                  child: ListView(
                children: [
                  CheckboxListTile(
                    checkboxShape: CircleBorder(),
                    title: Text("Nabil"),
                    value: true,
                    onChanged: (value) {},
                  ),
                  CheckboxListTile(
                    checkboxShape: CircleBorder(),
                    title: Text("Nabil"),
                    value: false,
                    onChanged: (value) {},
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}
