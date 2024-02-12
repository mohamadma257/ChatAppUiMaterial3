import 'package:chat_material3/utils/colors.dart';
import 'package:chat_material3/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SetupProfile extends StatefulWidget {
  const SetupProfile({super.key});

  @override
  State<SetupProfile> createState() => _SetupProfileState();
}

class _SetupProfileState extends State<SetupProfile> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameCon = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Iconsax.logout_1))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome,",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                "Nabil AL Amawi Course",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Please Enter Your Name",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              CustomField(
                controller: nameCon,
                lable: "Name",
                icon: Iconsax.user,
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: kPrimaryColor,
                  padding: const EdgeInsets.all(16),
                ),
                child: Center(
                  child: Text(
                    "Continuo".toUpperCase(),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
