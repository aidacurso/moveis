import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'dart:math';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //dadsdasd
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const MyApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 5));
}

String texte = "inicio";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

String titulo = "Cara e coroa da Aida";

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum game { cara, coroa }
String path = "assets/tela.png";

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var rnd = Random();
  game? qual = game.cara;
  int random() {
    return rnd.nextInt(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 191, 231),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(titulo),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(path),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(
                texte,
              ),
            ),
            Container(
              width: 150,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: const Text("cara"),
                    leading: Radio<game>(
                      value: game.cara,
                      groupValue: qual,
                      onChanged: (game? value) {
                        setState(() {
                          qual = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text("coroa"),
                    leading: Radio<game>(
                      value: game.coroa,
                      groupValue: qual,
                      onChanged: (game? value) {
                        setState(() {
                          qual = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        hoverColor: Colors.pink,
        onPressed: () => setState(() {
          _counter = random();
          if (_counter == 1) {
            path = "assets/coroa.png";
            if (qual == game.coroa) {
              texte = "caiu coroa, você ganhou!";
            } else {
              texte = "caiu coroa, você perdeu!";
            }
          } else {
            path = "assets/cara.png";
            if (qual == game.coroa) {
              texte = "caiu cara, você perdeu!";
            } else {
              texte = "caiu cara, você ganhou!";
            }
          }
        }),
        child: const Icon(Icons.replay),
      ),
    );
  }
}
