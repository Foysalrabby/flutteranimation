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
  var fwidth = 200.0;
  var fheight = 100.0;
  var myopacity = 1.0;
  bool flag = true;
  var bgcolor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: myopacity,
                curve: Curves.bounceIn,
                duration: Duration(seconds: 2),
                child: Container(
                  width: fwidth,
                  height: fheight,
                  color: bgcolor,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                       
                       if (flag) {
                        myopacity = 0.0;
                         flag = false;
                       } else {
                     myopacity = 1.0;

                     flag = true;
                      }
                    });
                  },
                  child: Text("click"))
            ],
          ),
        ));
  }
}
