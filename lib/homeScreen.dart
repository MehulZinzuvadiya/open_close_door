import 'package:flutter/material.dart';

class OpenCloseDoor extends StatefulWidget {
  const OpenCloseDoor({Key? key}) : super(key: key);

  @override
  State<OpenCloseDoor> createState() => _OpenCloseDoorState();
}

class _OpenCloseDoorState extends State<OpenCloseDoor> {
  double x=100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Open-Close Doors"),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
      ),
      body: Center(
        child: Ink(
          child: InkWell(
            onTap: () {
              setState(() {
                if (x > 60) {
                  x -= 20;
                }
              });
            },
            onDoubleTap: () {
              setState(() {
                if (x < 80) {
                  x += 20;
                }

              });
            },
            child: Container(
              height: 360,
              width: 230,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.symmetric(
                  vertical: BorderSide(
                    color: Colors.grey.shade400,
                    width: x,
                  ),
                  horizontal: BorderSide(
                    color: Colors.black,
                    width: 50,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
