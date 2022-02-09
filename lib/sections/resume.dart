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
    return TextButton(
      onPressed: () => {},
      child: Padding(
        padding: const EdgeInsets.only(right:25),
        child: Text(
          'DOWNLOAD CV',
          style:
              Theme.of(context).textTheme.headline6.copyWith(color: Colors.white,fontSize:18),
        ),
      ),
    );
  }
}
