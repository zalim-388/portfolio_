import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/utils/Appcolor.dart';
import 'package:personalportfolio/utils/responsive.dart';

class Aboutme extends StatefulWidget {
  final GlobalKey contactKey;
  const Aboutme({super.key, required this.contactKey});

  @override
  State<Aboutme> createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
  bool isHovered = false;

  List<Map<String, dynamic>> skill = [
    {"icon": "assets/icon/flutter-svgrepo-com.svg", "name": "Flutter"},
    {"icon": "assets/icon/dart-svgrepo-com.svg", "name": "dart"},
    {"icon": "assets/icon/firebase-svgrepo-com.svg", "name": "Firebase"},
    {"icon": "assets/icon/bloc-svgrepo-com.svg", "name": "Bloc"},
    {"icon": "assets/icon/git-svgrepo-com.svg", "name": "Git"},
    {"icon": "assets/icon/figma-svgrepo-com.svg", "name": "Figma"},
    {"icon": "assets/icon/api-svgrepo-com.svg", "name": "API"},
  ];

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.ismobile(context);
    final isDesktop = Responsive.isdesktop(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: backgroundColor),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : screenWidth * 0.0,
        vertical: isMobile ? 30 : 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: screenWidth * 0.1,
              height: 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    secondaryColor,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 120),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 20 : screenWidth * 0.1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [secondaryColor, normalColor],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "About Me",
                      style: GoogleFonts.poppins(
                        fontSize: isMobile ? 20 : 26,

                        foreground:
                            Paint()
                              ..shader = const LinearGradient(
                                colors: [secondaryColor, normalColor],
                              ).createShader(
                                const Rect.fromLTWH(0, 0, 500, 50),
                              ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),

                Container(
                  padding: EdgeInsets.all(isMobile ? 20 : 30),
                  width: 1000,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: secondaryColor.withOpacity(0.3),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: secondaryColor.withOpacity(0.1),
                        blurRadius: 15,
                        spreadRadius: 5,
                      ),
                    ],
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (!isMobile)
                            Container(
                              width: 3,
                              height: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    secondaryColor.withOpacity(0.7),
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),

                          SizedBox(width: isMobile ? 0 : 20),

                          Expanded(
                            child: Text(
                              "Hello! I’m Salim, a passionate Flutter developer\nwith experience in crafting sleek, responsive,\nand user-friendly mobile applications.\n\n"
                              "I specialize in designing intuitive \nUI and developing functional apps using Flutter.\nIf you're looking for a dedicated developer\nto bring your ideas to life, let's connect!\n\n",

                              style: GoogleFonts.inter(
                                fontSize: isMobile ? 16 : 16,
                                fontWeight: FontWeight.normal,
                                color: descriptionColor,
                                height: 1.7,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Align(
                        alignment: Alignment.centerRight,
                        child: MouseRegion(
                          onEnter: (_) => setState(() => isHovered = true),
                          onExit: (_) => setState(() => isHovered = false),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  isHovered
                                      ? secondaryColor
                                      : secondaryColor.withOpacity(0.7),
                                  isHovered
                                      ? normalColor
                                      : normalColor.withOpacity(0.7),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow:
                                  isHovered
                                      ? [
                                        BoxShadow(
                                          color: secondaryColor.withOpacity(
                                            0.4,
                                          ),
                                          blurRadius: 15,
                                          spreadRadius: 1,
                                        ),
                                      ]
                                      : [],
                            ),
                            child: TextButton(
                              onPressed: () {
                                Scrollable.ensureVisible(
                                  widget.contactKey.currentContext!,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Text(
                                "Let's Connect",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Skills",
                      style: GoogleFonts.poppins(
                        fontSize: isMobile ? 20 : 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),

                    Text(
                      "The skills, tools and technologies I use:",
                      style: GoogleFonts.inter(
                        fontSize: isMobile ? 14 : 16,
                        fontWeight: FontWeight.normal,
                        color: descriptionColor,
                      ),
                    ),

                    SizedBox(height: 30),

                    Container(
                      height: isMobile ? 110 : 130,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: skill.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(isMobile ? 12 : 18),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: secondaryColor.withOpacity(0.2),
                                      width: 1,
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                    skill[index]["icon"].toString(),
                                    height: isMobile ? 30 : 40,
                                    width: isMobile ? 30 : 40,
                                    colorFilter: ColorFilter.mode(
                                      Colors.white.withOpacity(0.9),
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  skill[index]["name"].toString(),
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    color: descriptionColor,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 60),
        ],
      ),
    );
  }
}
