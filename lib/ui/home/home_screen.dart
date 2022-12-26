import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        clipBehavior: Clip.hardEdge,
        itemExtent: 140,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow:  [
                    BoxShadow(
                      blurRadius: 6,
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(0, 1),
                    )
                  ],
                  border: Border.all(color: Colors.black.withOpacity(0.1)),
                  color: Colors.white30.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(16))),
              child: Row(
                children:  [
                Image.asset("images/movie_example_image.png")
                ],
              ),
            ),
          );
        });
  }
}
