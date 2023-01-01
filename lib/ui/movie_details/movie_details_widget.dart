import 'package:cinema/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MovieDetailsScreen extends StatelessWidget {
  int movieId;

  MovieDetailsScreen({Key? key, required this.movieId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ColoredBox(
        color: Colors.black,
        child: Center(
          child: ListView(
            physics: const RangeMaintainingScrollPhysics(),
            scrollDirection : Axis.vertical ,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    ApplicationImages.movieDetailsHeader,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Thank God ",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.send_and_archive_outlined,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 24),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        const Text(
                          "9.9",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        const Text(
                          "2022",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: const Text(
                            "1M+",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
