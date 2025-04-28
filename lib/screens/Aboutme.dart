import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/utils/Appcolor.dart';
import 'package:personalportfolio/utils/responsive.dart';

class Aboutme extends StatefulWidget {
  const Aboutme({super.key});

  @override
  State<Aboutme> createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
  bool isHovered = false;

  List<Map<String, dynamic>> skill = [
    {"icon": "assets/icon/flutter-svgrepo-com.svg", "name": "Flutter"},
    {"icon": "assets/icon/dart-svgrepo-com.svg", "name": "dart"},
    {"Icon": "assets/icon/firebase-svgrepo-com.svg", "name": "Firebase"},
    {"icon": "assets/icon/bloc-svgrepo-com.svg", "name": "Bloc"},
    {"Icon": "assets/icon/git-svgrepo-com.svg", "name": "Git"},
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
      decoration: BoxDecoration(color: BackgroundColor),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : screenWidth * 0.1,
        vertical: isMobile ? 30 : 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1),
            child: Container(
              width: screenWidth * 0.1,
              height: 1,
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          const SizedBox(height: 50),
          Text(
            "About Me",
            style: GoogleFonts.poppins(
              fontSize: isMobile ? 20 : 26,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Hello! I’m Salim, a passionate Flutter developer\nwith experience in crafting sleek, responsive,\nand user-friendly mobile applications.\n\n"
                "I specialize in designing intuitive \nUI and developing functional apps using Flutter.\nIf you're looking for a dedicated developer\nto bring your ideas to life, let's connect!\n\n",
                style: GoogleFonts.inter(
                  fontSize: isMobile ? 14 : 16,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xFFB0B0B0),
                  height: 1.6,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/laptop.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(height: 60),
          Text(
            "Skills",
            style: GoogleFonts.poppins(
              fontSize: isMobile ? 20 : 26,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "The skills, tools and technologies I use:",
            style: GoogleFonts.inter(
              fontSize: isMobile ? 14 : 16,
              fontWeight: FontWeight.normal,
              color: description,
            ),
          ),

          Container(
            height: 100,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: skill.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        skill[index]["icon"].toString(),
                        height: isMobile ? 30 : 40,
                        width: isMobile ? 30 : 40,
                      ),

                      // Text(
                      //   skill[index]["name"],
                      //   style: GoogleFonts.inter(
                      //     fontSize: isMobile ? 12 : 14,
                      //     color: Colors.white,
                      //   ),
                      // ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
