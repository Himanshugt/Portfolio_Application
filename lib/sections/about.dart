// @dart=2.9
// ignore_for_file: prefer_const_constructors
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/sections/cover.dart';
import 'package:portfolio_app/screens/main_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/sections/resume.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({
    Key key,
  }) : super(key: key);

  final String about =
    'I am Himanshu Gupta an undergrad in Electronics\nand Telecommunication from Indian Institute of\nEngineering Science and Technology, Shibpur.\n I have inclinations in Software and\nApp development streams.\nI am Himanshu Gupta an undergrad in Electronics\nand Telecommunication from Indian Institute of\nEngineering Science and Technology, Shibpur.\n I have inclinations in Software development and\nApp development streams.';


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(width: MediaQuery.of(context).size.width/6),
        SizedBox(
          width: MediaQuery.of(context).size.width/3,
          child: Center(
            child: Text(
              'About',
              style: Theme.of(context).textTheme.headline4.copyWith(color: primaryColor)
            ),
          ),
        ),
        Text(
          about,
          style:Theme.of(context).textTheme.headline6,
        ),
        SizedBox(width: MediaQuery.of(context).size.width/6),
      ],
    );
  }
}
