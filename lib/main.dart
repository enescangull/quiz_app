import 'package:flutter/material.dart';

import 'homepage.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 16, 175, 238),
                  Color.fromARGB(255, 9, 233, 233),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
              child: const HomePage())),
    ),
  );
}
