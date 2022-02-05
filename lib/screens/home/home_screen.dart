// @dart=2.9
// ignore_for_file: prefer_const_constructors
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/sections/about.dart';
import 'package:portfolio_app/sections/cover.dart';
import 'package:portfolio_app/screens/main_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/sections/resume.dart';
import 'package:url_launcher/url_launcher.dart';

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
      // Resume(),
      // SizedBox(height: 75),
      CustomDivider(),
      SizedBox(height: 75),
      About(),
      SizedBox(height: 75),
      // Resume(),
    ]);
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: MediaQuery.of(context).size.width/8,
      endIndent: MediaQuery.of(context).size.width/8,
      height: 20,
      thickness: 0.2,
      color: Colors.grey,
    );
  }
}