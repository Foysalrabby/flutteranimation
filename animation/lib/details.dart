import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title:Text("use hero animation") ,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: Center(
        child: Container(

          width: 400,
          height: 400,
          child: Image.asset("assets/images/cricket.png"),

        )
      ),
     );
  }

}