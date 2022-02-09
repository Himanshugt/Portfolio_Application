// @dart=2.9

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key key,
    this.itemController,
  }) : super(key: key);

  final ItemScrollController itemController;

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  void scrollToIndex(int index) {
    widget.itemController.scrollTo(
      index: index, 
      duration: const Duration(seconds: 2),
      curve: Curves.easeInOutCubic);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width) / 7,
      child: Drawer(
          child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child: ListView(children: [
          const SizedBox(height: 25),
          SideNavigation(title: 'About', scrollToIndex: scrollToIndex,index:4),
          SideNavigation(title: 'Skills', scrollToIndex: scrollToIndex,index:8),
          SideNavigation(title: 'Education', scrollToIndex: scrollToIndex,index:12),
          SideNavigation(title: 'Projects', scrollToIndex: scrollToIndex,index:16),
          SideNavigation(title: 'Contact', scrollToIndex: scrollToIndex,index:20),
          SideNavigation(
              title: 'Download Resume', scrollToIndex: scrollToIndex),
        ]),
      )),
    );
  }
}

class SideNavigation extends StatefulWidget {
  const SideNavigation({key, this.title, this.scrollToIndex, this.index}) : super(key: key);

  final String title;
  final Function scrollToIndex;
  final int index;

  @override
  State<SideNavigation> createState() => _SideNavigationState();
}

class _SideNavigationState extends State<SideNavigation> {
  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 5,
      color: secondaryColor,
      child: ListTile(
        selectedColor: Colors.green,
        title: Text(
          widget.title,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: primaryColor),
        ),
        onTap: widget.scrollToIndex(widget.index),
      ),
    );
  }
}