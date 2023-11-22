import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result_screen extends StatefulWidget {
  const Result_screen({super.key});

  @override
  State<Result_screen> createState() => _Result_screenState();
}

class _Result_screenState extends State<Result_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Result Screen"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
            }, child: const Text("Go back")),
            ElevatedButton(onPressed: (){
            }, child: const Text("Main menu")),

          ],
        ),
      ),
    );
  }
}
