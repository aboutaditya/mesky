import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: width,
            height: width * (500 / 375),
            child: Column(
              children: [
                topRow(width: width),
                postImage(width: width),
                bottomRow(width: width),
                likes(width: width),
                caption(width: width),
                commentsection(width: width),
                replies(width: width)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class replies extends StatelessWidget {
  const replies({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: width * (17 / 375), top: width * (3 / 375)),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "aboutaditya",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * (8 / 375)),
                      child: Text("Nice Picture",
                          style: GoogleFonts.poppins(fontSize: 12)),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * (10 / 375)),
                  child: Image.asset(
                    "assets/images/like.png",
                    height: width * (12 / 375),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width * (13 / 375), top: width * (4 / 375)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: width * (17 / 375),
                        width: width * (0.4 / 375),
                        color: Color.fromARGB(255, 174, 171, 171),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * (8 / 375)),
                        child: Row(
                          children: [
                            Text(
                              "leomessi",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * (8 / 375)),
                              child: Text("Thanks",
                                  style: GoogleFonts.poppins(fontSize: 12)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width * (10 / 375)),
                    child: Image.asset(
                      "assets/images/like.png",
                      height: width * (12 / 375),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: width * (8 / 375)),
              child: Row(
                children: [
                  CircleAvatar(
                      radius: width * (13 / 375),
                      child: ClipOval(
                          child: Image.asset("assets/images/messi.jpg"))),
                  Padding(
                    padding: EdgeInsets.only(left: width * (8 / 375)),
                    child: Text(
                      "Add a comment...",
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: Colors.grey[700]),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: width * (6 / 375)),
              child: Row(
                children: [
                  Text("11 HOURS AGO",
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Colors.grey[700],
                          letterSpacing: 0.4))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class commentsection extends StatelessWidget {
  const commentsection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: width * (17 / 375), top: width * (4 / 375)),
      child: Row(
        children: [
          Text(
            "View all 129 comments",
            style: GoogleFonts.poppins(color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}

class caption extends StatelessWidget {
  const caption({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: width * (17 / 375), top: width * (2 / 375)),
      child: Container(
        child: Row(
          children: [
            Text(
              "leomessi",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 13),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * (8 / 375)),
              child: Text("Night in Tokyo",
                  style: GoogleFonts.poppins(fontSize: 12)),
            )
          ],
        ),
      ),
    );
  }
}

class likes extends StatelessWidget {
  const likes({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width * (16 / 375)),
      child: Container(
        width: width,
        child: Text(
          "130,000 likes",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11),
        ),
      ),
    );
  }
}

class postImage extends StatelessWidget {
  const postImage({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: width,
      child: Image.asset(
        "assets/images/post.png",
        width: width,
      ),
    );
  }
}

class bottomRow extends StatelessWidget {
  const bottomRow({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: width * (6 / 375), left: 8, right: 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/like.png",
                  width: width * (21 / 375),
                  height: width * (24 / 375),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/comment.png",
                  width: width * (23 / 375),
                  height: width * (22 / 375),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/share.png",
                  width: width * (20 / 375),
                  height: width * (23 / 375),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 17),
          child: Image.asset(
            "assets/images/save.png",
            width: width * (21 / 375),
            height: width * (24 / 375),
          ),
        )
      ],
    );
  }
}

class topRow extends StatelessWidget {
  const topRow({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                  radius: width * (17 / 375),
                  child: Stack(children: [
                    Align(
                      alignment: const Alignment(0, 0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: width * (28 / 375),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/messi.jpg",
                            height: width * (28.5 / 375),
                            width: width * (28.5 / 375),
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/oval.png",
                      height: width * (32 / 375),
                      width: width * (32 / 375),
                    ),
                  ])),
              Padding(
                padding: EdgeInsets.only(left: width * (8 / 375)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "leomessi",
                          style: GoogleFonts.dmSans(
                              fontSize: 13, fontWeight: FontWeight.w800),
                        ),
                        Image.asset("assets/images/verified.png")
                      ],
                    ),
                    Text("Tokyo, Japan",
                        style: GoogleFonts.dmSans(fontSize: 11))
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Image.asset("assets/images/Shape.png"),
          )
        ],
      ),
    );
  }
}
