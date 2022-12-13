import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: width * (98 / 375),
      width: width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            YourStory(),
            AllStories(link: "assets/images/me.jpg", name: "aboutaditya"),
            AllStories(link: "assets/images/msd.jpg", name: "mahi7781"),
            AllStories(link: "assets/images/messi.jpg", name: "leomessi"),
            AllStories(link: "assets/images/ronaldo.jpg", name: "cristiano"),
            AllStories(link: "assets/images/google.webp", name: "google"),
          ],
        ),
      ),
    );
  }
}

class YourStory extends StatelessWidget {
  const YourStory({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: width * (81 / 375),
        width: width * (62 / 375),
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: width * (31 / 375),
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/virat.jpg",
                    height: width * (54 / 375),
                    width: width * (54 / 375),
                  ),
                ),
              ),
              Text(
                "Your Story",
                style: GoogleFonts.dmSans(fontSize: 11),
              )
            ],
          ),
          Align(
              alignment: Alignment(0.9, 0.35),
              child: CircleAvatar(
                radius: width * (8 / 375),
                child: Icon(
                  Icons.add,
                  size: width * (12 / 375),
                ),
                backgroundColor: Colors.blue,
              ))
        ]),
      ),
    );
  }
}

class AllStories extends StatelessWidget {
  AllStories({super.key, required this.link, required this.name});
  String link;
  String name;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: width * (81 / 375),
        width: width * (62 / 375),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                  radius: width * (32 / 375),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: width * (28 / 375),
                        child: ClipOval(
                          child: Image.asset(
                            link,
                            height: width * (54 / 375),
                            width: width * (54 / 375),
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/oval.png",
                      height: width * (62 / 375),
                      width: width * (62 / 375),
                    ),
                  ])),
              Text(
                name,
                style: GoogleFonts.dmSans(fontSize: 11),
              )
            ]),
      ),
    );
  }
}
