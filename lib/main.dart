import 'package:flutter/material.dart';

import 'package:ages_workshop/widgets/stateless.dart';
import 'package:ages_workshop/widgets/stateful.dart';
import 'package:ages_workshop/widgets/our_app.dart';



void main() {
  runApp(
      MaterialApp(
        // home: Stateless(),
        // home: Stateful(),
        home: OurApp(),
      )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

