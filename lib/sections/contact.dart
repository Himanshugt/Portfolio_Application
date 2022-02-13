// @dart=2.9
// ignore_for_file: prefer_const_constructors
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatelessWidget {
  const Contact({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Center(
        child: Text('Contact',
            style: Theme.of(context).textTheme.headline4.copyWith(
                color: primaryColor, fontWeight: FontWeight.bold)),
      ),
      SizedBox(height:75),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ContactCard(icon:FontAwesomeIcons.mapMarkerAlt,title:'ADDRESS',desc:'P213/1, Ajay Bagh\nPort Blair'),
          ContactCard(icon:FontAwesomeIcons.phoneAlt,title:'PHONE',desc:'+91 8169406967\n+91 7063929943'),
          ContactCard(icon:FontAwesomeIcons.envelope,title:'EMAIL',desc:'gthimanshu16@gmail.com\nhiman321gupta@gmail.com'),
          ContactCard(icon:FontAwesomeIcons.whatsapp,title:'WHATSAPP',desc:'+91 8169406967\n+91 8169406967')
        ]
      ),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //   Row(
      //     children: const [
            
      //       SizedBox(width: 197),
            
      //     ]
      //   ),
      //   SizedBox(height: 150),
      //   Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: const [
            
      //     ]
      //   )
      // ])
    ]);
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key key, this.icon, this.title, this.desc,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Icon(icon, size: 28, color: Colors.green[400]),
        SizedBox(width: 15),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold,fontSize:18),
        )
      ]),
      SizedBox(height: 20),
      Text(desc,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              .copyWith(color: bodyTextColor))
    ]);
  }
}