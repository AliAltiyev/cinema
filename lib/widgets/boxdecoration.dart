import 'package:flutter/material.dart';

class BoxDecorationExample extends StatelessWidget {
  const BoxDecorationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.yellow[100 * ((index++) % 8)],
                    gradient: const LinearGradient(
                        colors: [Colors.red, Colors.green, Colors.blue],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: const Padding(
                  padding: EdgeInsets.all(32.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.cyan,
                    child: Icon(
                      Icons.ac_unit,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            );
          }),
      appBar: AppBar(),
    );
  }
}
