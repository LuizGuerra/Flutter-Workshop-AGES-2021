import 'package:flutter/material.dart';

class Stateless extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: fixedContent(),
    );
  }

  fixedContent() {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Text(
            "C.A. Montain",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
          ),
        ),
        Image(image: AssetImage('images/wpp.jpeg')),
        Padding(
          padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
          child: Text(paintingDescription()),
        )
      ],
    );
  }

  updatable() {
    return Column(
      children: [
        Text(counter.toString()),
        SizedBox(height: 16,),
        TextButton(onPressed: (){
          counter++;
        }, child: Text("huh")),
      ],
    );
  }

  paintingDescription() {
    return """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel euismod nibh, ac molestie velit. Quisque ex odio, lacinia quis quam vel, varius vulputate nisi. Nam eget convallis lorem. Nulla facilisi. Fusce volutpat sit amet nulla eget mattis. Nunc pulvinar tellus sit amet lacus venenatis, at semper diam suscipit. Nulla facilisi. Duis nec neque velit. Vivamus vel nunc non ante iaculis mollis.

Nullam consequat risus sed felis scelerisque euismod. Suspendisse feugiat porttitor turpis, id aliquam urna ultrices vitae. Praesent fermentum ac nisi ac tristique. Phasellus ornare tortor nisi, id consequat justo venenatis vitae. In nisl nulla, tincidunt a arcu id, pharetra ultricies eros. Proin semper ex nec nulla aliquam sollicitudin. Maecenas sollicitudin quis ligula in volutpat. Nam in neque finibus, mollis risus vulputate, mollis turpis. Fusce sit amet quam leo. Fusce id lacus libero. Etiam cursus pulvinar urna, sed semper odio rhoncus et. Aliquam dolor ipsum, porttitor sit amet imperdiet sit amet, auctor et diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla elementum facilisis justo bibendum finibus.

Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus a bibendum quam. Suspendisse diam justo, laoreet vel felis sed, gravida aliquam felis. Sed quis turpis tempus, scelerisque leo viverra, tincidunt dui. Duis libero urna, vestibulum quis placerat at, porta vitae lectus. Nunc semper maximus massa, vitae cursus lacus elementum ac. Vivamus vulputate imperdiet nunc, eu tincidunt lectus pretium eget. Donec sit amet nibh quis ex convallis varius. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam scelerisque fermentum felis, vel ornare ex ullamcorper sit amet.


    """;
  }

}
