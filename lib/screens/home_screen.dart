// @dart=2.9

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: SideMenu()),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.green,
                )),
          ],
        ),
      ),
    );
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey !',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white),
            ),
            const SizedBox(height: 25),
            const SideNavigation(title: 'About'),
            const SideNavigation(title: 'Skills'),
            const SideNavigation(title: 'Education'),
            const SideNavigation(title: 'Projects'),
            const SideNavigation(title: 'Contact'),
          ]),
    ));
  }
}

class SideNavigation extends StatelessWidget {
  const SideNavigation({
    key,
    this.title
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: primaryColor),
          ),
        ));
  }
}
