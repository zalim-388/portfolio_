import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.only(
            left: 240,
            top: 00,
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
                "Hello! I’m Salim, a passionate Flutter developer \n with experience in crafting sleek, responsive,\n and user-friendly mobile applications.\n\n"
                "I specialize in designing intuitive \n UI and developing functional apps using Flutter.\n If you're looking for a dedicated developer\n to bring your ideas to life, let's connect!\n\n"
                "Here are a few technologies I've been working with recently:",
                style: GoogleFonts.inter(
                  fontSize: ismobile ? 14 : 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFB0B0B0),
                  height: 1.6,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.arrow_right, color: Color(0xFF64FFDA), size: 18),
                  Text('Flutter', style: techStyle()),
                  SizedBox(width: 30),
                  Icon(Icons.arrow_right, color: Color(0xFF64FFDA), size: 18),
                  Text('Firebase', style: techStyle()),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_right, color: Color(0xFF64FFDA), size: 18),
                  Text('Dart', style: techStyle()),
                  SizedBox(width: 30),
                  Icon(Icons.arrow_right, color: Color(0xFF64FFDA), size: 18),
                  Text('Provider', style: techStyle()),
                ],
              ),
              // Vertical Divider
              // Padding(
              //   padding: const EdgeInsets.only(top: 20),
              //   child: VerticalDivider(
              //     thickness: 1,
              //     color: Colors.white.withOpacity(0.3),
              //     width: 20,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

TextStyle techStyle() {
  return GoogleFonts.inder(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Color(0xFFB0B0B0),
    height: 1.6,
  );
}
