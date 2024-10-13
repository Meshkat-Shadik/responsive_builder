//? Here we will only add those widgets, which are used in all screens [mobile,tab,desktop,watch]

import 'package:flutter/material.dart';

class HomeDrawerItems extends StatelessWidget {
  const HomeDrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
        ),
        ListTile(
          leading: Icon(Icons.pages_outlined),
          title: Text('Categories'),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Account'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    );
  }
}
