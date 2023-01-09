import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int randomNumber = 0;
  static const redPage = "Red page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text(redPage),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              redPage,
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () {
                  randomNumber = Random().nextInt(200);
                  Navigator.pop(context, randomNumber);
                  debugPrint("Generated Number ${randomNumber.toString()}");
                },
                child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}
