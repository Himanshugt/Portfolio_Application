// @dart=2.9
// ignore_for_file: prefer_const_constructors
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class Cover extends StatelessWidget {
  const Cover({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width/6),
          CoverIntro(),
          Spacer(),
          SocialPlatformPanel(),
          SizedBox(width: MediaQuery.of(context).size.width/6), 
        ],
      ),
    );
  }
}

class CoverIntro extends StatelessWidget {
  const CoverIntro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height:MediaQuery.of(context).size.height/4),
        Text('Hi,\nI\'m Himanshu',
            style: Theme.of(context).textTheme.headline2.copyWith(
              fontSize: 78,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.5,
              color: Colors.white
            )
          ),
        const SizedBox(height: 15),
        DefaultTextStyle(
          style: Theme.of(context).textTheme.headline5.copyWith(color: primaryColor),
          child: AnimatedTextKit(animatedTexts: [
            TyperAnimatedText(
              'Student',
            ),
            TyperAnimatedText(
              'Flutter Developer',
            ),
            TyperAnimatedText(
              'Competitive Coder',
            ),
          ]),
        )
      ]);
  }
}

class SocialPlatformPanel extends StatelessWidget {
  const SocialPlatformPanel({
    Key key,
  }) : super(key: key);

  final _githubURL = 'https://github.com/Himanshugt';
  final _linkedInURL = 'https://www.linkedin.com/in/himanshu-gupta16/';
  final _instagramURL = 'https://www.instagram.com/himanshugt16/';
  final _twitterURL = 'https://twitter.com/Himansh12546474';

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center, 
      children: [
        SizedBox(height:50+(3*MediaQuery.of(context).size.height/16)),
        IconButton(
          onPressed: () async {
            _launchURL(_instagramURL);
          },
          icon: const Icon(
            FontAwesomeIcons.instagram,
            size: 34
          )),
        SizedBox(height:35),
        IconButton(
          onPressed: () async {
            _launchURL(_linkedInURL);
          },
          icon: const Icon(
            FontAwesomeIcons.linkedin,
            size: 34
          )
        ),
        SizedBox(height:35),
        IconButton(
          onPressed: () async {
            _launchURL(_githubURL);
          },
          icon: const Icon(
            FontAwesomeIcons.github,
            size: 34
          )),
        SizedBox(height:35),
        IconButton(
          onPressed: () async {
            _launchURL(_twitterURL);
          },
          icon: const Icon(

            FontAwesomeIcons.twitter,
            size: 34
          )),
    ]);
  }

  
}