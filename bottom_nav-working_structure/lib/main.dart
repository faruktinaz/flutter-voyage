import 'package:flutter/material.dart';
import 'package:working_structure/bottom_nav_usage/bottom_nav_page.dart';
import 'package:working_structure/mainpage.dart';
import 'package:working_structure/user_choises/user_choises.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavigationPage(),
    );
  }
}
