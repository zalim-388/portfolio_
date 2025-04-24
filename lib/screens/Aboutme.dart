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
  @override
  Widget build(BuildContext context) {
    final ismobile = Responsive.ismobile(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: BackgroundColor),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 240,
            top: ismobile ? 100 : 200,
            right: 40,
            bottom: 60,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: 1,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
              SizedBox(height: 50),
              Text(
                "About Me",
                style: GoogleFonts.poppins(
                  fontSize: ismobile ? 20 : 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Hello! I’m Salim, a passionate Flutter developer\nwith experience in crafting sleek, responsive,\nand user-friendly mobile applications.\n\n"
                "I specialize in designing intuitive \nUI and developing functional apps using Flutter.\nIf you're looking for a dedicated developer\nto bring your ideas to life, let's connect!\n\n"
                "Here are a few technologies I've been working with recently:",
                style: GoogleFonts.inter(
                  fontSize: ismobile ? 14 : 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFB0B0B0),
                  height: 1.6,
                ),
              ),

              SizedBox(height: 60),

              Text(
                "Skills",
                style: GoogleFonts.poppins(
                  fontSize: ismobile ? 20 : 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "The skills, tools and technologies I use:",

                style: GoogleFonts.inter(
                  fontSize: ismobile ? 14 : 16,
                  fontWeight: FontWeight.normal,
                  color: description,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icon/flutter-svgrepo-com.svg',
                    height: 40,
                    width: 40,
                  ),

                  SizedBox(width: 20),
                  SvgPicture.asset(
                    "assets/icon/dart-svgrepo-com.svg",
                    height: 40,
                    width: 40,
                  ),

                  SizedBox(width: 20),
                  SvgPicture.asset(
                    "assets/icon/firebase-svgrepo-com.svg",
                    height: 40,
                    width: 40,
                  ),

                  SizedBox(width: 20),
                  SvgPicture.asset(
                    "assets/icon/bloc-svgrepo-com.svg",
                    height: 40,
                    width: 40,
                  ),

                  SizedBox(width: 20),
                  SvgPicture.asset(
                    "assets/icon/git-svgrepo-com.svg",
                    height: 40,
                    width: 40,
                  ),

                  SizedBox(width: 20),
                  SvgPicture.asset(
                    "assets/icon/figma-svgrepo-com.svg",
                    height: 40,
                    width: 40,
                  ),

                  SizedBox(width: 20),
                  SvgPicture.asset(
                    "assets/icon/api-svgrepo-com.svg",
                    height: 40,
                    width: 40,
                  ),
                ],
              ),

              // SizedBox(height: 20),
              // Row(
              //   children: [
              //     Icon(Icons.arrow_right, color: Color(0xFF64FFDA), size: 18),
              //     Text(
              //       'Flutter',
              //       style: GoogleFonts.inder(
              //         fontSize: 14,
              //         fontWeight: FontWeight.normal,
              //         color: Color(0xFFB0B0B0),
              //         height: 1.6,
              //       ),
              //     ),
              //     SizedBox(width: 35),
              //     Icon(Icons.arrow_right, color: Color(0xFF64FFDA), size: 18),
              //     Text(
              //       'Firebase',
              //       style: GoogleFonts.inder(
              //         fontSize: 14,
              //         fontWeight: FontWeight.normal,
              //         color: Color(0xFFB0B0B0),
              //         height: 1.6,
              //       ),
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Icon(Icons.arrow_right, color: Color(0xFF64FFDA), size: 18),
              //     Text(
              //       'Dart',
              //       style: GoogleFonts.inder(
              //         fontSize: 14,
              //         fontWeight: FontWeight.normal,
              //         color: Color(0xFFB0B0B0),
              //         height: 1.6,
              //       ),
              //     ),
              //     SizedBox(width: 45),
              //     Icon(Icons.arrow_right, color: Color(0xFF64FFDA), size: 18),
              //     Text(
              //       'Provider',
              //       style: GoogleFonts.inder(
              //         fontSize: 14,
              //         fontWeight: FontWeight.normal,
              //         color: Color(0xFFB0B0B0),
              //         height: 1.6,
              //       ),
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Icon(Icons.arrow_right, color: Color(0xFF64FFDA), size: 18),
              //     Text(
              //       'REST APIs',
              //       style: GoogleFonts.inder(
              //         fontSize: 14,
              //         fontWeight: FontWeight.normal,
              //         color: Color(0xFFB0B0B0),
              //         height: 1.6,
              //       ),
              //     ),
              //     SizedBox(width: 35),
              //     Icon(Icons.arrow_right, color: Color(0xFF64FFDA), size: 18),
              //     Text(
              //       'Figma',
              //       style: GoogleFonts.inder(
              //         fontSize: 14,
              //         fontWeight: FontWeight.normal,
              //         color: Color(0xFFB0B0B0),
              //         height: 1.6,
              //       ),
              //     ),
              //   ],
              // ),

              // Vertical Divider
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: VerticalDivider(
                  thickness: 1,
                  color: Colors.white.withOpacity(0.3),
                  width: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
