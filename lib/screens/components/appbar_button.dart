// @dart=2.9

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';

class AppBarButton extends StatefulWidget {
  const AppBarButton({key, this.title, this.scrollToIndex, this.index, this.alignment})
      : super(key: key);

  final String title;
  final Function scrollToIndex;
  final int index;
  final double alignment;

  @override
  _AppBarButtonState createState() => _AppBarButtonState();
}

class _AppBarButtonState extends State<AppBarButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => widget.scrollToIndex(widget.index,widget.alignment),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: Text(
          widget.title,
          style:
              Theme.of(context).textTheme.headline6.copyWith(color: primaryColor ,fontSize: 18),
        ),
      ),
    );
  }
}
