import 'package:flutter/material.dart';
import 'package:wclone/feature/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wclone',
        theme: ThemeData.dark(),
        home: const WelcomePage(),
      ),
    );
  }
}
