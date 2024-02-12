import 'package:chat_material3/utils/colors.dart';
import 'package:chat_material3/widgets/logo.dart';
import 'package:chat_material3/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailCon = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LogoApp(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Reset Password,",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                "Please Enter Your Email",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              CustomField(
                controller: emailCon,
                lable: "Email",
                icon: Iconsax.direct,
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
                    "Send Email".toUpperCase(),
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
