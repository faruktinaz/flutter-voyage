import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Image.asset("img/f2.png",
                height: 340,
                fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text("Plan Your Task Management Easily.",
                  textAlign: TextAlign.center ,
                  style: TextStyle(fontSize: 35, fontFamily: "Karla", fontWeight: FontWeight.bold, color: Color(0xFF33433C))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum posuere nisl quis maximus. ", textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.black45),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: SizedBox(
                width: 300,
                child: TextButton(
                  onPressed: (){},
                  child: Text("Start Now", style: TextStyle(color: Colors.white, fontSize: 20),),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                  ),
                ),
              ),
            )
          ],
        ),
    );
  }
}
