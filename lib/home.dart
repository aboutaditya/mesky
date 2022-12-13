import 'package:flutter/material.dart';
import 'package:mesky/navbar.dart';
import 'package:mesky/post.dart';
import 'package:mesky/stories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SafeArea(
            child: SizedBox(
          height: 14,
        )),
        NavBar(),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * (8 / 375)),
          child: Container(
            height: .5,
            color: Color.fromARGB(249, 158, 158, 158),
          ),
        ),
        const Stories(),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * (4 / 375)),
          child: Container(
            height: .5,
            color: Color.fromARGB(249, 158, 158, 158),
          ),
        ),
        Posts()
      ],
    );
  }
}
