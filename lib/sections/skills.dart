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

class Skills extends StatelessWidget {
  const Skills({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:4*MediaQuery.of(context).size.width/9,
      child: Column(
        children: [
          Text(
            'Skills',
            style: Theme.of(context).textTheme.headline4.copyWith(color: primaryColor,fontWeight:FontWeight.bold)
          ),
          SizedBox(height: 75),
          Row(
            children: const [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage:0.85,label: 'DSA'
              ),
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage:0.65,label: 'Flutter'
              ),
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage:0.60,label: 'Firebase'
              ),
            ),
          ],),
          SizedBox(height: 75),
          Row(
            children: [
              // SizedBox(width:MediaQuery.of(context).size.width/9),
              Expanded(
                child: Column(
                  children:const [
                    AnimatedLinearProgressIndicator(
                    percentage:0.80,label: 'Java',
                    ),
                    AnimatedLinearProgressIndicator(
                      percentage:0.75,label: 'C++',
                    ),
                    AnimatedLinearProgressIndicator(
                      percentage:0.60,label: 'Python',
                    ),
                    AnimatedLinearProgressIndicator(
                      percentage:0.80,label: 'Dart',
                    ),
                  ]
                ),
              ),
              // SizedBox(width:MediaQuery.of(context).size.width/9),
            ],
          )
        ]
      )
    );
  }
}