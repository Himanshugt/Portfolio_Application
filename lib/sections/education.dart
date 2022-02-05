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
import 'package:portfolio_app/sections/resume.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_app/sections/skills.dart';

class Education extends StatelessWidget {
  const Education({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2*MediaQuery.of(context).size.height/3,
      width: (2*MediaQuery.of(context).size.width)/3,
      // color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width/3,
            child: Center(
              child: Text(
                'Education',
                style: Theme.of(context).textTheme.headline4.copyWith(color: primaryColor)
              ),
            ),
          ),
          Container(
            // color:secondaryColor,
            width: MediaQuery.of(context).size.width/3,
            height: 2*MediaQuery.of(context).size.height/3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height/18),
                  Container(
                    height: 4*MediaQuery.of(context).size.height/9,
                    width: 1*MediaQuery.of(context).size.width/3,
                    color: Colors.black,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/18),
                  SizedBox(height: MediaQuery.of(context).size.height/18),
                  Container(
                    height: 4*MediaQuery.of(context).size.height/9,
                    width: 1*MediaQuery.of(context).size.width/3,
                    color: Colors.black,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/18),
                  SizedBox(height: MediaQuery.of(context).size.height/18),
                  Container(
                    height: 4*MediaQuery.of(context).size.height/9,
                    width: 1*MediaQuery.of(context).size.width/3,
                    color: Colors.black,
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
