// @dart=2.9
// ignore_for_file: prefer_const_constructors
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/screens/components/skill_indicator.dart';
import 'package:portfolio_app/sections/about.dart';
import 'package:portfolio_app/sections/cover.dart';
import 'package:portfolio_app/screens/main_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/sections/education.dart';
import 'package:portfolio_app/sections/resume.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_app/sections/skills.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      Cover(),
      CustomDivider(),
      SizedBox(height: 75),
      About(),
      SizedBox(height: 75),
      CustomDivider(),
      SizedBox(height: 75),
      Skills(),
      SizedBox(height: 25),
      CustomDivider(),
      SizedBox(height: 75),
      Education(),
      SizedBox(height: 75),
      CustomDivider(),
      SizedBox(height: 75),
      Projects(),
      SizedBox(height: 75),
      CustomDivider(),
      SizedBox(height: 75)
    ]);
  }
}

class Projects extends StatelessWidget {
  const Projects({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 2*MediaQuery.of(context).size.width/3,
      child: Column(
        children: [
          Text(
            'Projects',
            style: Theme.of(context).textTheme.headline4.copyWith(color: primaryColor)
          ),
          SizedBox(height: 75),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width/18),
                Container(
                  height: 6*MediaQuery.of(context).size.height/9,
                  width: 4*MediaQuery.of(context).size.width/9,
                  color: Colors.black,
                ),
                SizedBox(width: MediaQuery.of(context).size.width/18),
                SizedBox(width: MediaQuery.of(context).size.width/18),
                Container(
                  height: 6*MediaQuery.of(context).size.height/9,
                  width: 4*MediaQuery.of(context).size.width/9,
                  color: Colors.black,
                ),
                SizedBox(width: MediaQuery.of(context).size.width/18),
                SizedBox(width: MediaQuery.of(context).size.width/18),
                Container(
                  height: 6*MediaQuery.of(context).size.height/9,
                  width: 4*MediaQuery.of(context).size.width/9,
                  color: Colors.black,
                ),
                SizedBox(width: MediaQuery.of(context).size.width/18),
              ],
            )
          )
        ],
      )
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: MediaQuery.of(context).size.width / 8,
      endIndent: MediaQuery.of(context).size.width / 8,
      height: 20,
      thickness: 0.2,
      color: Colors.grey,
    );
  }
}
