import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? mobile;
  final Widget? desktop;

  const Responsive({super.key, this.mobile, this.desktop});

  static bool ismobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  static bool isdesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    if (width >= 1024 && desktop != null) {
      return desktop!;
    } else {
      return mobile!;
    }
  }
}
