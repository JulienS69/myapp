import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Galerie extends StatefulWidget {
  const Galerie({Key? key}) : super(key: key);

  @override
  _GalerieState createState() => _GalerieState();
}

class _GalerieState extends State<Galerie> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          width: 2000,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    Expanded(child: Text("Test", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),)
                  ],
                ),
              )
            ],

          ),
          ),
      );
  }
}
