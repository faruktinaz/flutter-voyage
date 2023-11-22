import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:working_structure/bottom_nav_usage/page_1.dart';
import 'package:working_structure/bottom_nav_usage/page_2.dart';
import 'package:working_structure/bottom_nav_usage/page_3.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selected_i = 0;
  var pages = [const Page1(), const Page2(), const Page3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation"), backgroundColor: Colors.black45,),
      body: pages[selected_i],
      bottomNavigationBar: BottomNavigationBar(
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.looks_one_sharp), label: "one"),
            BottomNavigationBarItem(icon: Icon(Icons.looks_two_rounded), label: "two"),
            BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "three"),
          ],
        currentIndex: selected_i,
        backgroundColor: Colors.black45,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black87,
        onTap: (index){
            setState(() {
              selected_i = index;
            });
        },
      ),
    );
  }
}
