import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Name"),
        trailing: IconButton(onPressed: () {}, icon: Icon(Iconsax.message)),
      ),
    );
  }
}
