// @dart=2.9
// ignore_for_file: prefer_const_constructors
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';

class About extends StatelessWidget {
  const About({
    Key key,
  }) : super(key: key);

  final String about =
    'I, as a student, have always been enthusiastic about technology and the programming world. I started my coding journey five years back in school and thereafter had a great learning curve. I have inclinations towards Software and\nApplication development streams and have constantly been working to enhance my skills in these fields.';


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // SizedBox(width: MediaQuery.of(context).size.width/6),
        Expanded(
          child: Center(
            child: Text(
              'About',
              style: Theme.of(context).textTheme.headline4.copyWith(color: primaryColor,fontWeight:FontWeight.bold)
            ),
          ),
        ),
        Expanded(child: AboutContent(about: about)),
        // SizedBox(width: MediaQuery.of(context).size.width/6),
      ],
    );
  }
}

class AboutContent extends StatelessWidget {
  const AboutContent({
    Key key,
    @required this.about,
  }) : super(key: key);

  final String about;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Full Name :  ',
              style:Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
            ),
            Text(
              'Himanshu Gupta',
              style:Theme.of(context).textTheme.headline6.copyWith(color:Colors.green[300]),
            ),
          ]
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Age :  ',
              style:Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
            ),
            Text(
              '21',
              style:Theme.of(context).textTheme.headline6.copyWith(color:Colors.green[300]),
            ),
          ]
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Current Location :  ',
              style:Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
            ),
            Text(
              'Port Blair',
              style:Theme.of(context).textTheme.headline6.copyWith(color: Colors.green[300]),
            ),
          ]
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Ongoing Degree :  ',
              style:Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
            ),
            Text(
              'B. Tech Pre-final Year',
              style:Theme.of(context).textTheme.headline6.copyWith(color: Colors.green[300]),
            ),
          ]
        ),
        SizedBox(height: 20),
        Text(
          about,
          style:Theme.of(context).textTheme.headline6.copyWith(color: bodyTextColor),
          // overflow: TextOverflow.clip
        ),
      ]
    );
  }
}
