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
      physics: const BouncingScrollPhysics(),
        itemCount: 10,
        clipBehavior: Clip.hardEdge,
        itemExtent: 140,
        itemBuilder: (BuildContext context, int index) {
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
                  borderRadius: const BorderRadius.all(Radius.circular(16))),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image.asset("images/movie_example_image.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              ("Mortal Kombat"),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              ("12/10/2022"),
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.4)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              ("Express yourself with a custom text design created just fo`r you by a professional designer. Need ideas? We’ve collected some amazing examples of text images from our global community of designers. Get inspired and start planning the perfect text design today."),
                              // style: TextStyle(overflow: TextOverflow.ellipsis),

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
        });
  }
}
