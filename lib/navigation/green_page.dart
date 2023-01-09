import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({Key? key}) : super(key: key);
  static const pageText = "Green page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text(pageText),
      ),
      body: const Center(
        child: Text(
          pageText,
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
