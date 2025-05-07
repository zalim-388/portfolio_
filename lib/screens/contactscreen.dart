import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/utils/Appcolor.dart';
import 'package:personalportfolio/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  // No form submission method needed

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.ismobile(context);
    final isDesktop = Responsive.isdesktop(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      // padding: EdgeInsets.symmetric(
      //   horizontal: isMobile ? 20 : screenWidth * 0.1,
      //   vertical: 80,
      // ),
      // decoration: BoxDecoration(color: backgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: screenWidth * 0.1,
              height: 2,
              color: Colors.white.withOpacity(0.1),
            ),
          ),

          SizedBox(height: 80),

          Text(
            "Let's Connect",
            style: GoogleFonts.poppins(
              fontSize: isMobile ? 28 : 40,
              fontWeight: FontWeight.bold,
              foreground:
                  Paint()
                    ..shader = LinearGradient(
                      colors: [secondaryColor, normalColor],
                    ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
            ),
          ),
          SizedBox(height: 16),

          Text(
            "I'm always open to discussing new projects,\ncreative ideas or opportunities to be part of your vision.",
            style: GoogleFonts.inter(
              fontSize: isMobile ? 16 : 18,
              color: descriptionColor,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 60),

          _buildContactInfo(isMobile),

          SizedBox(height: 80),

          Text(
            "© ${DateTime.now().year} Salim. All Rights Reserved.",
            style: GoogleFonts.inter(
              fontSize: 14,
              color: Colors.white.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo(bool isMobile) {
    return Container(
      width: isMobile ? 400 : 600,
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.03),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.08)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 30,
            offset: Offset(0, 15),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.contact_phone_outlined,
              size: 40,
              color: secondaryColor,
            ),
          ),

          const SizedBox(height: 25),

          Text(
            "Get In Touch",
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            "Feel free to reach out for collaboration or just to say hello!",
            style: GoogleFonts.inter(
              fontSize: 16,
              color: Colors.white.withOpacity(0.7),
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 40),

          _buildContactMethod(
            icon: Icons.email_outlined,
            title: "Email",
            value: "zaalim388@gmail.com",
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
          ),

          // SizedBox(height: 25),

          // _buildContactMethod(
          //   icon: Icons.location_on_outlined,
          //   title: "Location",
          //   value: "Kerala, India",
          //   onTap: () {},
          // ),
          const SizedBox(height: 40),

          Divider(color: Colors.white.withOpacity(0.1)),

          SizedBox(height: 40),

          Text(
            "Follow Me",
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 25),

          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _buildSocialButton(
                FontAwesomeIcons.github,
                "https://github.com/zalim-388",
              ),
              _buildSocialButton(
                FontAwesomeIcons.linkedin,
                "https://www.linkedin.com/in/salim-a31335351/",
              ),
              _buildSocialButton(
                FontAwesomeIcons.instagram,
                "https://www.instagram.com/zaliiim__?igsh=emg5NTZ3Z3pjNGkz",
              ),
              _buildSocialButton(FontAwesomeIcons.x, "https://x.com/zaalim388"),
              _buildSocialButton(
                FontAwesomeIcons.whatsapp,
                "https://wa.me/919562791690",
              ),
            ],
          ),

          const SizedBox(height: 40),

          GestureDetector(
            onTap: () {
              final Uri emailUri = Uri(
                scheme: "mailto",
                path: 'zaalim388@gmail.com',
                query: Uri.encodeFull(
                  'subject=Contact from Portfolio&body=Hello Salim,',
                ),
              );
              launchUrl(emailUri);
            },
            child: Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [secondaryColor, normalColor.withOpacity(0.8)],
                ),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: secondaryColor.withOpacity(0.3),
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.mail_outline_rounded, color: Colors.white),
                    SizedBox(width: 12),
                    Text(
                      "Email Me",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactMethod({
    required IconData icon,
    required String title,
    required String value,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      hoverColor: Colors.white.withOpacity(0.05),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.03),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white.withOpacity(0.05)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: secondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, size: 22, color: secondaryColor),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialButton(IconData icon, String url) {
    bool isHovered = false;

    return StatefulBuilder(
      builder: (context, setState) {
        return MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => launchUrl(Uri.parse(url)),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color:
                    isHovered
                        ? secondaryColor.withOpacity(0.2)
                        : Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color:
                      isHovered
                          ? secondaryColor.withOpacity(0.3)
                          : Colors.white.withOpacity(0.1),
                ),
                boxShadow:
                    isHovered
                        ? [
                          BoxShadow(
                            color: secondaryColor.withOpacity(0.1),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ]
                        : [],
              ),
              child: Icon(
                icon,
                size: 22,
                color:
                    isHovered ? secondaryColor : Colors.white.withOpacity(0.7),
              ),
            ),
          ),
        );
      },
    );
  }
}
