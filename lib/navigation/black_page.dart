import 'package:flutter/material.dart';

class BlackPage extends StatelessWidget {
  const BlackPage({Key? key}) : super(key: key);
  static const pageText = "Black page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
