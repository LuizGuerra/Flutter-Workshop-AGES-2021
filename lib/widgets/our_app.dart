import 'package:flutter/material.dart';

class OurApp extends StatefulWidget {
  @override
  _OurAppState createState() => _OurAppState();
}

class _OurAppState extends State<OurApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Welcome!",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.add_circle_outline,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                height: 36,
                margin: const EdgeInsets.only(top: 24, bottom: 16),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 52,
                    itemBuilder: (context, index) {
                      if(index == 0 || index == 52) {
                        return SizedBox(width: 16);
                      }
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Center(
                              child: Text(
                            (index-1).toString(),
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      );
                    })),
            Flexible(
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 20),
                        color: Colors.amber,
                        height: 50,
                        width: 50,
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
