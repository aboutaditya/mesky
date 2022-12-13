import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Padding(
      padding:
          EdgeInsets.only(left: width * (20 / 375), right: width * (20 / 375)),
      child: Container(
        height: MediaQuery.of(context).size.height / 15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/home.png"),
            Image.asset("assets/images/search.png"),
            Image.asset("assets/images/add.png"),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset("assets/images/likes.png"),
              Padding(
                padding: EdgeInsets.only(top: 3),
                child: CircleAvatar(
                  radius: 2,
                  backgroundColor: Colors.red,
                ),
              ),
            ]),
            CircleAvatar(
                radius: MediaQuery.of(context).size.width * (12 / 375),
                child: ClipOval(child: Image.asset("assets/images/virat.jpg"))),
          ],
        ),
      ),
    );
  }
}
