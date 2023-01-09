import 'dart:math';

import 'package:flutter/material.dart';

class CustomSilverScrollViewExample extends StatelessWidget {
  CustomSilverScrollViewExample({Key? key}) : super(key: key);
  var randomColorNumber = Random().nextInt(255);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: <Widget>[
      SliverAppBar(
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
      foregroundColor: Colors.white,
      title: const Text("SliverAppBar"),
      expandedHeight: 300,
      pinned: true,
      floating: true,
      backgroundColor: Colors.yellow,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          "images/movie_details_header.png",
          fit: BoxFit.cover,
        ),
      ),
    ),
    SliverList(delegate: SliverChildListDelegate(_listElements())),
    SliverList(
    delegate: SliverChildBuilderDelegate(

    _sliverBuilderListElements,childCount: 10)),
            SliverFixedExtentList(delegate: SliverChildBuilderDelegate(_sliverBuilderListElements,childCount: 10), itemExtent: 200),

    ],
    )
    ,
    );
  }

  List<Widget> _listElements() {
    return [
      const Divider(
        indent: 16,
        endIndent: 16,
        thickness: 4,
        color: Colors.yellow,
      ),
      const ListTile(
        title: Text("Hello World"),
        subtitle: Text("Learning Flutter"),
        leading: CircleAvatar(
          radius: 32,
          child: Icon(Icons.person),
        ),
        tileColor: Colors.yellow,
      ),
      const ListTile(
        title: Text("Hello World"),
        subtitle: Text("Learning Flutter"),
        leading: CircleAvatar(
          radius: 32,
          child: Icon(Icons.person),
        ),
        tileColor: Colors.yellow,
      ),
      const ListTile(
        title: Text("Hello World"),
        subtitle: Text("Learning Flutter"),
        leading: CircleAvatar(
          radius: 32,
          child: Icon(Icons.person),
        ),
        tileColor: Colors.yellow,
      ),
      const ListTile(
        title: Text("Hello World"),
        subtitle: Text("Learning Flutter"),
        leading: CircleAvatar(
          radius: 32,
          child: Icon(Icons.person),
        ),
        tileColor: Colors.yellow,
      ),

    ];
  }

  Widget? _sliverBuilderListElements(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        title: const Text("Hello World"),
        subtitle: Text("Learning Flutter + ${index.toString()}"),
        leading: const CircleAvatar(
          radius: 44,
          child: Icon(Icons.person),
        ),
        tileColor: Color.fromARGB(randomColorNumber, Random().nextInt(155),
            Random().nextInt(155), Random().nextInt(155)),
      ),
    );
  }
}
