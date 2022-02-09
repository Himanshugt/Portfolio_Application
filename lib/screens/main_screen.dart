// @dart=2.9

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/sections/resume.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'components/appbar_button.dart';


class MainScreen extends StatefulWidget {
  MainScreen({key, this.children}) : super(key: key);

  final List<Widget> children;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  final ItemScrollController itemController = ItemScrollController();

  void scrollToIndex(int index,double alignment) {
    itemController.scrollTo(
      index: index,
      duration: const Duration(seconds: 2),
      curve: Curves.easeInOutCubic,
      alignment:alignment
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: ()=>scrollToIndex(0,0),
              icon: const Icon(
                FontAwesomeIcons.hSquare,
                color: primaryColor,
                size: 34
              ),
            )
        ),
        actions: [
          AppBarButton(title: 'About', scrollToIndex: scrollToIndex, index: 3,alignment: 0.2),
          AppBarButton(title: 'Skills', scrollToIndex: scrollToIndex, index: 7,alignment: 0.001),
          AppBarButton(title: 'Education', scrollToIndex: scrollToIndex, index: 11,alignment: 0.13),
          AppBarButton(title: 'Projects', scrollToIndex: scrollToIndex, index: 15,alignment: 0.05),
          AppBarButton(title: 'Contact', scrollToIndex: scrollToIndex, index: 19,alignment: 0.1),
          Resume()
        ],
      ),
      // drawer: SideMenu(itemController: itemController),
      body: ScrollablePositionedList.builder(
          itemScrollController: itemController,
          itemCount: widget.children.length,
          itemBuilder: (BuildContext context, int index) {
            return Align(
                alignment: Alignment.center,
                child: Container(
                  child: widget.children[index],
                ));
          }),
    );
  }
}
