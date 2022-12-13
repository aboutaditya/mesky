import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * (10 / 375)),
            child: Image.asset(
              "assets/images/Camera.png",
              width: width * (24 / 375),
              height: width * (22 / 375),
            ),
          ),
          Image.asset(
            "assets/images/insta.png",
            width: width * (105 / 375),
            height: width * (28 / 375),
          ),
          Padding(
            padding: EdgeInsets.only(right: width * (14 / 375)),
            child: Container(
              width: width * (70 / 375),
              height: width * (26 / 375),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/IGTV.png",
                    width: width * (25 / 375),
                    height: width * (25 / 375),
                  ),
                  Image.asset("assets/images/msg.png",
                      width: width * (25 / 375), height: width * (25 / 375))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
