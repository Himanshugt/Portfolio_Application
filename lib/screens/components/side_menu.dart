// @dart=2.9

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width)/7,
      child: Drawer(
          child: Container(
        padding: EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child: ListView(children: [
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
          const SideNavigation(title: 'Download Resume'),
        ]),
      )),
    );
  }
}

class SideNavigation extends StatelessWidget {
  const SideNavigation({key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 5,
      color: secondaryColor,
      child: ListTile(
        selectedColor: Colors.green,
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: primaryColor),
        ),
        onTap: () {
          print('HEy');
        },
      ),
    );
  }
}

// TextButton(
//       onPressed: () {},
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 10),
//         width: double.infinity,
//         child: Text(
//           title,
//           style: Theme.of(context)
//               .textTheme
//               .headline6
//               .copyWith(color: primaryColor),
//         ),
//       )
//     );