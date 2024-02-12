import 'package:chat_material3/screens/settings/profile.dart';
import 'package:chat_material3/screens/settings/qr_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:iconsax/iconsax.dart';

class SettingHomeScreen extends StatefulWidget {
  const SettingHomeScreen({super.key});

  @override
  State<SettingHomeScreen> createState() => _SettingHomeScreenState();
}

class _SettingHomeScreenState extends State<SettingHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(children: [
            ListTile(
              minVerticalPadding: 40,
              leading: CircleAvatar(
                radius: 30,
              ),
              title: Text("Name"),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QrCodeScreen(),
                        ));
                  },
                  icon: Icon(Iconsax.scan_barcode)),
            ),
            Card(
              child: ListTile(
                title: Text("Profile"),
                leading: Icon(Iconsax.user),
                trailing: Icon(Iconsax.arrow_right_3),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    )),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: SingleChildScrollView(
                          child: BlockPicker(
                            pickerColor: Colors.red,
                            onColorChanged: (value) {},
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Done"))
                        ],
                      );
                    },
                  );
                },
                title: Text("Theme"),
                leading: Icon(Iconsax.color_swatch),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Dark Mode"),
                leading: Icon(Iconsax.user),
                trailing: Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Signout"),
                trailing: Icon(Iconsax.logout_1),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
