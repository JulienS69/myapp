import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  Call_xefi createState() => Call_xefi();
}

class Call_xefi extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      "Site en cours de Développement ",
                      style: TextStyle(fontSize: 35),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Image.network(
                    'https://media.giphy.com/media/wvQIqJyNBOCjK/giphy.gif?cid=ecf05e47nx8d7jn902aplf6vg2pn3mt9nn0rgzphfi4vztna&rid=giphy.gif&ct=g'),
              ),
              Text(
                "Ceci est une application de test",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ));
  }
}
