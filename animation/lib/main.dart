import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isfirst = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      reload();
    });
   
  }
   void reload() {
    setState(() {
      isfirst = false;
    });
      
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: AnimatedCrossFade(
            duration: Duration(seconds: 2),
            firstChild: Container(
              width: 200,
              height: 200,
              color: Colors.amberAccent,
            ),
            secondChild: Image.asset(
              "assets/images/badminton.png",
              width: 100,
              height: 100,
            ),
            crossFadeState:isfirst ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          ),
        ));
  }
}
