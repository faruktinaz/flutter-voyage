import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:working_structure/result_screen.dart';

class Game_screen extends StatefulWidget {
  const Game_screen({super.key});

  @override
  State<Game_screen> createState() => _Game_screenState();
}

class _Game_screenState extends State<Game_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Game"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Result_screen()));
            }, child: const Text("game over")),
          ],
        ),
      ),
    );
  }
}
