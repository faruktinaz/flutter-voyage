import 'package:design_project/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    final double screenHeight = screenSize.size.height;
    final double screenWidth = screenSize.size.width;

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Kopernik Pizza", style: TextStyle(color: text_color, fontFamily: "DancingScript", fontSize: screenWidth / 10),),
        backgroundColor: main_color,
        centerTitle: true,
      ),
      body: Column(
        children: [
        Padding(
          padding: EdgeInsets.only(top: screenHeight/43),
          child: Text(d!.pizzaBaslik, style: TextStyle(fontSize: 36, color: main_color, fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Image.asset("imgs/pizza_resim.png", height: 225,fit: BoxFit.fitHeight,),
        ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(content: d.peynirYazi),
                Chip(content: d.sucukYazi),
                Chip(content: d.zeytinYazi),
                Chip(content: d.biberYazi),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(d.teslimatSure, style: TextStyle(color: text_color2, fontSize: 22,fontWeight: FontWeight.bold ,fontFamily: "DancingScript"),),
                Text(d.teslimatBaslik, style: TextStyle(color: main_color, fontSize: 22,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(d.pizzaAciklama,
                    style: TextStyle(color: text_color2, fontSize: 30, fontFamily: "DancingScript"),textAlign: TextAlign.center, ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(d.fiyat, style: TextStyle(fontSize: 40, color: main_color, fontWeight: FontWeight.bold),),
                SizedBox(width: screenWidth/2, height: screenHeight/14,
                  child: TextButton(onPressed: (){},
                    style: TextButton.styleFrom(
                        backgroundColor: main_color,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    child: Text(d.buttonYazi, style: TextStyle(color: text_color, fontSize: 18),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String content;
  Chip({required this.content});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      style: TextButton.styleFrom(backgroundColor: main_color),
      child: Text(content, style: TextStyle(color: text_color),),
    );
  }
}
