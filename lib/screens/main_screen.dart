// @dart=2.9

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({key, this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Builder(
          builder: (context)=>IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon:const Icon(
              Icons.menu,
              color:primaryColor
            ),
          )
        )
      ),
      drawer: const SideMenu(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(

          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...children
            ],
          )
        ),
      ),
    );
  }
}