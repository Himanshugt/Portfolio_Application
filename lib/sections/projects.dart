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

class Projects extends StatelessWidget {
  Projects({
    Key key,
  }) : super(key: key);

  final url  = ['https://github.com/Himanshugt/CoffeeShopApp',
                'https://github.com/Himanshugt/Portfolio_Application',
                'https://github.com/Himanshugt/TravelMania'
                ];
  final about =[
      '\u2022 Developed a mobile application to order coffee online.The app contains features like tracking previous orders and favorites.\n\u2022 The application is developed on Flutter and is compatible for both Android as well as iOS.\n\u2022 Contains Register and Sign-in feature for User Authentication implemented using Firebase.',
      '\u2022 Built a Portfolio application describing my recent projects, skill set, education and other details.\n\u2022 The application is developed on Flutter using Material design and is compatible for both Android as well as iOS.\n\u2022 The application is developed on Flutter using Material design and is compatible for both Android as well as iOS.',
      '\u2022 Designed and implemented a software system that allows travel agencies to maintain their travel packages’ itinerary and passengers.\n\u2022 The software is designed in Java with extensive use of MySQL and Object-Oriented Programming.\n\u2022It has been tested using the JUnit 5 testing framework, which was integrated with Mockito.The project is also backed by High-Level design and Low-Level design.'
      ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 2 * MediaQuery.of(context).size.width / 3,
        child: Column(
          children: [
            Text('Projects',
                style: Theme.of(context).textTheme.headline4.copyWith(
                    color: primaryColor, fontWeight: FontWeight.bold)),
            SizedBox(height: 75-MediaQuery.of(context).size.height/18),
            Container(
              height: 5 * MediaQuery.of(context).size.height/6,
              width: 4 * MediaQuery.of(context).size.width / 9,
              child: SingleChildScrollView(
                  // scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height/18),
                      ProjectCard(
                        title: 'COFFEE AROMA',
                        techStack: 'Flutter, Firebase, Dart',
                        about: about[0],
                        url: url[0],
                        period: 'June 2021 – Present'
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/18),
                      SizedBox(height: MediaQuery.of(context).size.height/18),
                      ProjectCard(
                        title: 'TRAVEL MANIA',
                        techStack: 'Java, MySQL, JDBC, Maven, JUnit, Mockito',
                        about: about[2],
                        url: url[2],
                        period: 'September 2021'
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/18),
                      SizedBox(height: MediaQuery.of(context).size.height/18),
                      ProjectCard(
                        title: 'PORTFOLIO APPLICATION',
                        techStack: 'Flutter, Dart',
                        about: about[1],
                        url: url[1],
                        period: 'April 2021'
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/18),
                    ],
                  )),
            )
          ],
        ));
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key key,
    this.about,
    this.url, this.techStack, this.title, this.period,
  }) : super(key: key);

  final String about;
  final String url;
  final String techStack;
  final String title;
  final String period;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 6 * MediaQuery.of(context).size.height / 9 - 25,
        width: 4 * MediaQuery.of(context).size.width / 9 - 25,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                color: Colors.green[500],
                offset: Offset(
                  0.0,
                  0.0,
                ), //Offset
                blurRadius: 8.0,
                spreadRadius: 1.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ]),
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(title,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.green[400],
                      fontWeight: FontWeight.w600,
                      fontSize: 29)),
              Text(techStack,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.green[200], fontWeight: FontWeight.w200)),
              Text(about,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: bodyTextColor,
                        fontWeight: FontWeight.w200,
                        fontSize: 18,
                      )),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                    onPressed: () async {
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: Icon(FontAwesomeIcons.github,
                        color: Colors.green[200], size: 34)),
                Text(period,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.green[200], fontWeight: FontWeight.w200)),
              ]),
            ],
          ),
        ));
  }
}
