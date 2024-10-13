import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_example_2/home/screens/mobile/mobile_home_screen.dart';
import 'package:responsive_example_2/responsive/device_type_layout.dart';
import 'package:responsive_example_2/responsive/orientation_layout.dart';
import 'package:responsive_example_2/home/screens/tab/tab_home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) {
        return ResponsiveApp(
          builder: (context) {
            return const MainApp();
          },
        );
      },
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      builder: DevicePreview.appBuilder,
      home: DeviceTypeLayout(
        mobile: OrientationLayout(
          portrait: MobileHomeScreenPortrait(),
          landscape: MobileHomeScreenLandscape(),
        ),
        tablet: OrientationLayout(
          portrait: TabHomeScreenPortrait(),
          landscape: TabHomeScreenLandscape(),
        ),
      ),
    );
  }
}
