// ignore_for_file: prefer_const_constructors, unnecessary_new, avoid_unnecessary_containers, use_key_in_widget_constructors, camel_case_types

import 'dart:async';
import 'package:flutter/material.dart';
import 'pantalla_login.dart';

void main() {
  runApp(Pantalla_Inicio());
}

class Pantalla_Inicio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Pantalla_Inicio> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 8);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => PantallaLogin()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 73, 197, 16),
                // ignore: prefer_const_literals_to_create_immutables
                gradient: LinearGradient(colors: [
                  (Color.fromARGB(255, 35, 209, 171)),
                  Color.fromARGB(255, 23, 161, 143)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              child: Image.asset("../images/app_logo.png"),
            ),
          ),
        ],
      ),
    );
  }
}
