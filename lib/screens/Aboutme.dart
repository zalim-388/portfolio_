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
  @override
  Widget build(BuildContext context) {
    final ismobile = Responsive.ismobile(context);
    return Container(
  
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(color: BackgroundColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 840),
              child: Divider(thickness: 0.5, color: secondarycolor),
            ),
            SizedBox(height: 10),
            Text(
              "About Me",
              style: GoogleFonts.poppins(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Text(
                "Hello! I’m Salim, a passionate Flutter developer \n with experience in crafting sleek, responsive,\n and user-friendly mobile applications.\n\n"
                "I specialize in designing intuitive \n UI and developing functional apps using Flutter.\n If you're looking for a dedicated developer\n to bring your ideas to life, let's connect!\n\n"
                "Here are a few technologes l've been working with recthiy",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFB0B0B0),
                  height: 1.6,
                ),
              ),
            ),

            Icon(Icons.arrow_right, color: Color(0xFF64FFDA), size: 18),
          ],
        ),
      ),
    );
  }
}
