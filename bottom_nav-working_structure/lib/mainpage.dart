import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:working_structure/game.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mainpage"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Result : $i"),
            ElevatedButton(onPressed: (){
              setState(() {
                i++;
              });
            }, child: const Text("click")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Game_screen()));
            }, child: const Text("START")),
          ],
        ),
      ),
    );
  }
}
