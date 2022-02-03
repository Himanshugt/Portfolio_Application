// @dart=2.9

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/screens/components/side_menu.dart';

import '../main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        Container(
          height:MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          child: Text(
          'Himanshu Gupta',
          style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.white),
          ),
        ),
        Container(
          color: Colors.white,
          child: Text(
          'Himansh',
          style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ]
    );
  }
}
