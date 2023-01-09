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
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("OnTapClicked ${index.toString()}"),
                          ));
                },
                onDoubleTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("OnDoubleClicked ${index.toString()}"),
                          ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          image: AssetImage("images/movie_example_image.png"),
                          fit: BoxFit.cover),
                      color: Colors.yellow[100 * ((index++) % 8)],
                      gradient: const LinearGradient(
                          colors: [Colors.red, Colors.green, Colors.blue],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                ),
              ),
            );
          }),
      appBar: AppBar(),
    );
  }
}
