import 'package:chat_material3/screens/auth/forget_screen.dart';
import 'package:chat_material3/utils/colors.dart';
import 'package:chat_material3/widgets/logo.dart';
import 'package:chat_material3/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailCon = TextEditingController();
    TextEditingController passCon = TextEditingController();
    final formKey = GlobalKey<FormState>();
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
                "Welcome Back,",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                "Material Chat App With Nabil AL Amawi",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    CustomField(
                      controller: emailCon,
                      lable: "Email",
                      icon: Iconsax.direct,
                    ),
                    CustomField(
                      controller: passCon,
                      lable: "Password",
                      icon: Iconsax.password_check,
                      isPass: true,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        GestureDetector(
                          child: const Text("Forget Password?"),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgetScreen(),
                                ));
                          },
                        )
                      ],
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
                          "Login".toUpperCase(),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.all(16),
                        ),
                        onPressed: () {
                          // Navigator.pushAndRemoveUntil(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => SetupProfile(),
                          //     ),
                          //     (route) => false);
                        },
                        child: Center(
                          child: Text(
                            "Create Account".toUpperCase(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
