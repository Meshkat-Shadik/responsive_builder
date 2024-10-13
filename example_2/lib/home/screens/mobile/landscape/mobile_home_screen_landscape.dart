import 'package:flutter/material.dart';
import 'package:responsive_example_2/home/common/home_drawer_items.dart';
import 'package:responsive_example_2/responsive/size_x.dart';

class MobileHomeScreenLandscape extends StatelessWidget {
  const MobileHomeScreenLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Home Screen Landscape'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side content
          Expanded(
            flex: 1,
            child: Container(
              height: context.height,
              color: Colors.grey.shade50,
              alignment: Alignment.center,
              child: const HomeDrawerItems(),
            ),
          ),
          Container(
            height: context.height,
            width: 1,
            color: Colors.grey.shade300,
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: context.height,
              alignment: Alignment.center,
              child: const Text('Right Side'),
            ),
          ),
        ],
      ),
    );
  }
}
