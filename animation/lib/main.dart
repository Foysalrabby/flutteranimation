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
  bool flag = true;

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
              AnimatedContainer(
                  width: fwidth,
                  height: fheight,
                  color: Color.fromARGB(255, 7, 187, 31),
                  duration: Duration(seconds: 2)),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (flag) {
                        fwidth = 100.0;
                        fheight = 200.0;
                        flag = false;
                      } else {
                        fwidth = 200.0;
                        fheight = 100.0;
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
