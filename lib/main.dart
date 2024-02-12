import 'package:chat_material3/layout.dart';
import 'package:chat_material3/screens/auth/login_screen.dart';
import 'package:chat_material3/screens/auth/setup_profile.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.red, brightness: Brightness.dark),
        ),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue, brightness: Brightness.light),
          useMaterial3: true,
        ),
        home: LoginScreen());
  }
}
