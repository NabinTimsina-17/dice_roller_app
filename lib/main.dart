import 'dart:math';

import 'package:flutter/material.dart';

void main()=> runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Dice App",
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  changeDice(){
    setState(() {
      diceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          // Image
          Center(child: Image.asset("assets/$diceNumber.png", height: 250, width: 250,)),
          // Button
          MaterialButton(onPressed: changeDice,
          child: const Text("Roll", style: TextStyle(color: Color.fromARGB(255, 240, 22, 22),),),),
          const SizedBox(height: 70,),
          // Text
          const Text("#FlutterWithNABIN", style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}