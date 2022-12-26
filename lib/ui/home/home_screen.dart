import 'package:flutter/material.dart';

import '../../movies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var movies = <Movies>[
      Movies("images/movie_example_image.png", "Mortal Kombat", "20/12/2022",
          "Working with type can be intimidating, with tons of choices, potential use cases, and terminology rooted in the print industry."),
      Movies("images/movie_example_image.png", "Batman", "10/12/2022",
          "Working with type can be intimidating, with tons of choices, potential use cases, and terminology rooted in the print industry."),
      Movies("images/movie_example_image.png", "Mortal Kombat", "2/12/2022",
          "Working with type can be intimidating, with tons of choices, potential use cases, and terminology rooted in the print industry."),
      Movies("images/movie_example_image.png", "Fairy", "20/12/2012",
          "Working with type can be intimidating, with tons of choices, potential use cases, and terminology rooted in the print industry."),
      Movies("images/movie_example_image.png", "Pele", "20/12/2022",
          "Working with type can be intimidating, with tons of choices, potential use cases, and terminology rooted in the print industry."),
      Movies("images/movie_example_image.png", "Game of thrones", "20/12/2022",
          "Working with type can be intimidating, with tons of choices, potential use cases, and terminology rooted in the print industry."),
      Movies("images/movie_example_image.png", "Aliens", "20/12/2022",
          "Working with type can be intimidating, with tons of choices, potential use cases, and terminology rooted in the print industry."),
      Movies("images/movie_example_image.png", "Madonna", "20/12/2022",
          "Working with type can be intimidating, with tons of choices, potential use cases, and terminology rooted in the print industry."),
      Movies("images/movie_example_image.png", "Birds", "20/12/2022",
          "Working with type can be intimidating, with tons of choices, potential use cases, and terminology rooted in the print industry."),
      Movies("images/movie_example_image.png", "Banda", "20/12/2022",
          "Working with type can be intimidating, with tons of choices, potential use cases, and terminology rooted in the print industry.")
    ];

    return Stack(
      children: [
        ListView.builder(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: EdgeInsets.only(top: 60),
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            clipBehavior: Clip.hardEdge,
            itemExtent: 140,
            itemBuilder: (BuildContext context, int index) {
              var _movies = movies[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 6,
                          color: Colors.black.withOpacity(0.0),
                          offset: const Offset(0, 1),
                        )
                      ],
                      border: Border.all(color: Colors.black.withOpacity(0.1)),
                      color: Colors.white30.withOpacity(0.2),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(16))),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Image.asset(_movies.image),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _movies.title,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  _movies.time,
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.4)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  _movies.description
                                  // style: TextStyle(overflow: TextOverflow.ellipsis),
                                  ,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          splashColor: Colors.white60,
                          onTap: () {
                            print("sdadsad");
                          },
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white.withAlpha(400)),
          ),
        )
      ],
    );
  }
}
