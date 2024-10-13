import 'package:flutter/material.dart';
import 'package:responsive_example_2/home/common/home_drawer_items.dart';

class MobileHomeScreenPortrait extends StatelessWidget {
  const MobileHomeScreenPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Home Screen Portrait'),
      ),
      drawer: Drawer(
        child: HomeDrawerItems(),
      ),
      body: Center(
        child: Text('Mobile Home Screen Portrait'),
      ),
    );
  }
}
