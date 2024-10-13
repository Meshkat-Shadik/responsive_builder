import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_example_2/responsive/orientation_layout.dart';

class DeviceTypeLayout extends StatelessWidget {
  final OrientationLayout? mobile;
  final OrientationLayout? tablet;
  final OrientationLayout? desktop;
  final OrientationLayout? watch;

  const DeviceTypeLayout({
    super.key,
    this.mobile,
    this.tablet,
    this.desktop,
    this.watch,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        return switch (sizingInfo.deviceScreenType) {
          DeviceScreenType.desktop when desktop != null => desktop!,
          DeviceScreenType.tablet when tablet != null => tablet!,
          DeviceScreenType.watch when watch != null => watch!,
          DeviceScreenType.mobile when mobile != null => mobile!,
          _ => const Center(child: Text('Screen type not implemented')),
        };
      },
    );
  }
}
