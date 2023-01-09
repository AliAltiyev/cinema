import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({Key? key}) : super(key: key);
  static const pageText = "Yellow page";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          leading: const Text("Yellow"),
          title: const Text(pageText),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                pageText,
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: () async {
                    Navigator.pushNamed(context, "/RedPage");
                  },
                  child: const Text(
                    "Go to Red Page",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () async {
                    Navigator.pushNamed(context, "/GreenPage");
                  },
                  child: const Text(
                    "Go to Green Page",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
