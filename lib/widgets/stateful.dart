import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  const Stateful({Key? key}) : super(key: key);

  @override
  _StatefulState createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            label(),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [up(), down()],
            )
          ],
        ),
      ),
    );
  }

  label() {
    return Text(
      counter.toString(),
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 64),
    );
  }

  up() {
    return TextButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Text(
          "⬆️",
          style: TextStyle(
            fontSize: 30,
          ),
        ));
  }

  down() {
    return TextButton(
        onPressed: () {
          setState(() {
            counter--;
          });
        },
        child: Text(
          "⬇️️",
          style: TextStyle(
            fontSize: 30,
          ),
        ));
  }
}
