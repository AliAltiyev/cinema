import 'package:cinema/navigation/red_page.dart';
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
                    await Navigator.push<int>(context,
                            MaterialPageRoute(builder: (red) => RedPage()))
                        .then((int? value) {
                      debugPrint(value.toString());
                    });
                  },
                  child: const Text(
                    "Go to Red Page",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
