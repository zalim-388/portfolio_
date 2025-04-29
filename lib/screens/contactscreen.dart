import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/utils/Appcolor.dart';
import 'package:personalportfolio/utils/SocialIcon.dart';
import 'package:personalportfolio/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.ismobile(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : screenWidth * 0.1,
        vertical: 40,
      ),
      decoration: BoxDecoration(color: backgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: screenWidth * 0.1,
              height: 1,
              color: Colors.white.withOpacity(0.1),
            ),
          ),
          SizedBox(height: 100),
          Text(
            "Let's Connect",
            style: TextStyle(
              fontSize: isMobile ? 24 : 36,
              fontWeight: FontWeight.bold,

              foreground:
                  Paint()
                    ..shader = const LinearGradient(
                      colors: [secondaryColor, normalColor],
                    ).createShader(const Rect.fromLTWH(0, 0, 500, 50)),
            ),
          ),
           SizedBox(height: 10),
          Text(
            "      I’m always open to discussing new projects,\ncreative ideas or opportunities to be part of your vision.",
            style: GoogleFonts.inter(
              fontSize: isMobile ? 16 : 18,
              color: descriptionColor,
            ),
            textAlign: isMobile ? TextAlign.center : TextAlign.start,
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white.withOpacity(0.1)),
            ),
            child: Column(
              crossAxisAlignment:
                  isMobile
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
              children: [
                const Text(
                  "Contact",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 10),
                emailButton(),
                const SizedBox(height: 30),
                Wrap(
                  spacing: 20,
                  runSpacing: 10,
                  alignment:
                      isMobile ? WrapAlignment.center : WrapAlignment.start,
                  children: [
                    socialIcon(FontAwesomeIcons.x, "https://x.com/zaalim388"),
                    socialIcon(
                      FontAwesomeIcons.github,
                      "https://github.com/zalim-388",
                    ),
                    socialIcon(
                      FontAwesomeIcons.linkedin,
                      "https://www.linkedin.com/in/salim-a31335351/",
                    ),
                    socialIcon(
                      FontAwesomeIcons.instagram,
                      "https://www.instagram.com/zaliiim__?igsh=emg5NTZ3Z3pjNGkz",
                    ),
                    socialIcon(
                      FontAwesomeIcons.whatsapp,
                      "https://wa.me/919562791690",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget emailButton() {
  bool isHovered = false;

  return StatefulBuilder(
    builder: (context, setState) {
      return MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: GestureDetector(
          onTap: () {
            final Uri emailLaunchUri = Uri(
              scheme: "mailto",
              path: 'zaalim388@gmail.com',
              query: Uri.encodeFull(
                'subject=Contact from Portfolio&body=Hello Salim,',
              ),
            );
            launchUrl(emailLaunchUri);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.email_outlined,
                size: 20,
                color:
                    isHovered
                        ? secondaryColor.withOpacity(0.7)
                        : Colors.white.withOpacity(0.6),
              ),
              const SizedBox(width: 10),
              Text(
                "zaalim388@gmail.com",
                style: TextStyle(
                  color:
                      isHovered
                          ? secondaryColor.withOpacity(0.7)
                          : Colors.white.withOpacity(0.6),
                  fontSize: 16,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
