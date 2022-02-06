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
      height: 2 * MediaQuery.of(context).size.height / 3,
      width: (2 * MediaQuery.of(context).size.width) / 3,
      // color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: Center(
              child: Text('Education',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: primaryColor, fontWeight:FontWeight.bold)),
            ),
          ),
          Container(
              // color:secondaryColor,
              width: MediaQuery.of(context).size.width / 3,
              height: 2 * MediaQuery.of(context).size.height / 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height / 18),
                    EducationCard(
                      education:'Bachelor of Technology Degree',
                      schoolName:'INDIAN INSTITUTE OF ENGINEERING SCIENCE AND TECHNOLOGY, SHIBPUR',
                      year:'2019 - Present',
                      department:'Department of Electronics and Telecommunication Engineering',
                      grade:'CGPA - 8.09 (As of 5th Semester)'
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 18),
                    SizedBox(height: MediaQuery.of(context).size.height / 18),
                    EducationCard(
                      education:'Senior Secondary Education (XII)',
                      schoolName:'NAVY CHILDREN SCHOOL, MUMBAI',
                      year:'2017 - 2018',
                      department:null,
                      grade:'Percentage - 87.8 %'
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 18),
                    SizedBox(height: MediaQuery.of(context).size.height / 18),
                    EducationCard(
                      education:'Secondary Education (X)',
                      schoolName:'NAVY CHILDREN SCHOOL, MUMBAI',
                      year:'2015 - 2016',
                      department:null,
                      grade:'CGPA - 9.8 / 10'
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  const EducationCard({Key key,this.schoolName, this.education, this.department, this.year, this.grade}) : super(key: key);

  final String education;
  final String schoolName;
  final String department;
  final String year;
  final String grade;



  @override
  Widget build(BuildContext context) {
    return Container(
        height: 4 * MediaQuery.of(context).size.height / 9,
        width: 1 * MediaQuery.of(context).size.width / 3 - 25,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(education,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: bodyTextColor, fontWeight: FontWeight.w200)),
              Text(
                  schoolName,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.green[200], fontWeight: FontWeight.w400)),
              Text(year,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.green[200], fontWeight: FontWeight.w200)),
              if(department!=null)
                Text(
                  department,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: bodyTextColor, fontWeight: FontWeight.w200
                  )
                ),
              Text(
                grade,
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: bodyTextColor, fontWeight: FontWeight.w200)),
            ],
          ),
        ));
  }
}
