// @dart=2.9
// ignore_for_file: prefer_const_constructors
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/sections/cover.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class Resume extends StatelessWidget {
  const Resume({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: primaryColor,
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:12,horizontal:8),
        child: Wrap(
          children: [
            Icon(
              FontAwesomeIcons.download,
              size: 20
            ),
            SizedBox(width:10),
            Text(
            'Download Resume',
            style:Theme.of(context).textTheme.subtitle1.copyWith(fontWeight: FontWeight.w900),
            ),
          ]
        ),
      ) 
      
    );
  }
}
