import 'dart:math';

import 'package:cinema/navigation/user.dart';
import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int randomNumber = 0;
  static const redPage = "Red page";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as int;
    debugPrint(args.toString());
    final students = List.generate(
        args, (index) => User("User ${++index}", "id ${index++}"));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(redPage),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
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
                child: ListTile(
                    tileColor: Color.fromARGB(
                        Random().nextInt(250),
                        Random().nextInt(250),
                        Random().nextInt(250),
                        Random().nextInt(250)),
                    shape: const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                    title: Text(students[index].name),
                    leading: Text(students[index++].id)),
              ),
            );
          },
          itemCount: args),
    );
  }
}
