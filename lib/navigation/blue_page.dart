import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  const BluePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Blue Page"),
      ),
      body: const Center(
        child: Text("Blue Page",style: TextStyle(color: Colors.white,fontSize: 24),),
      ),
    );
  }
}
