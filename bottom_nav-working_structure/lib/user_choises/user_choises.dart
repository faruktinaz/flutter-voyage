import 'package:flutter/material.dart';

class UserChoises extends StatefulWidget {
  const UserChoises({super.key});

  @override
  State<UserChoises> createState() => _UserChoisesState();
}

class _UserChoisesState extends State<UserChoises> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kullanici etkilesimi"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){

            }, child: const Text("Snackbar")),
            ElevatedButton(onPressed: (){

            }, child: const Text("Snackbar(special)")),
            ElevatedButton(onPressed: (){

            }, child: const Text("Alert ")),
            ElevatedButton(onPressed: (){

            }, child: const Text("Alert(special)")),
          ],
        ),
      ),
    );
  }
}
