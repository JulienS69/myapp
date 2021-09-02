
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/galerie.dart';
import 'home_page.dart';
import 'call.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xefi',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isPhone=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('Hello');
            },

          ),

          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  width: 1730,
                 height: 100,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     alignment: Alignment.centerLeft,
                     image: GetPlatform.isWeb? AssetImage("images/test.png"): AssetImage("assets/images/logo-2.png"),
                   )
                 ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: IconButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Call()))
                  },
                  icon: Icon(Icons.notifications_none)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            )

          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Accueil"),
              Tab(icon: Icon(Icons.book), text: "Formulaire"),
              Tab(icon: Icon(Icons.camera), text: "Profile"),
              Tab(icon: Icon(Icons.settings), text: "settings"),
            ],
          ),

        ),


        body: TabBarView(children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox( width: 400.0, child: Image.asset('assets/images/logo-2.png')),
                Text(
                  'Hello,tty! How are you?',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Center(
            child: HomePage(),
          ),
          Center(
            child: Galerie(),
          ),
          Center(
            child: Text("5fgdfg"),
          )
        ],),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          tooltip: 'Increment',
          child: new Icon(
            Icons.double_arrow,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
