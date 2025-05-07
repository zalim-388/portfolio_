import 'package:flutter/material.dart';
import 'package:personalportfolio/utils/Appcolor.dart';
import 'package:url_launcher/url_launcher.dart';

Widget socialIcon(IconData icon, String url) {
  bool isHovered = false;
  return StatefulBuilder(
    builder: (context, setState) {
      return MouseRegion(
        onEnter: (event) => setState(() => isHovered = true),
        onExit: (event) => setState(() => isHovered = false),
        child: IconButton(
          onPressed: () => launchUrl(Uri.parse(url)),
          icon: Icon(
            icon,
            size: 20,
            color: isHovered ? secondaryColor : normalColor,
          ),
        ),
      );
    },
  );
}
