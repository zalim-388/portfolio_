import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/utils/Appcolor.dart';
import 'package:personalportfolio/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.ismobile(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: backgroundColor),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 16 : screenWidth * 0.1,
          vertical: isMobile ? 60 : 50,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: screenWidth * (isMobile ? 0.3 : 0.1),
                  height: 1,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                "Some Things I've Build",
                style: GoogleFonts.poppins(
                  fontSize: isMobile ? 18 : 24,
                  
              foreground:
                    Paint()
                      ..shader = const LinearGradient(
                        colors: [secondaryColor, normalColor],
                      ).createShader(const Rect.fromLTWH(0, 0, 500, 50)),
          
                  // color: secondarycolor,
                  // // color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 70),
              // Project 1: Groceries App
              _buildProjectSection(
                context,
                isMobile: isMobile,
                imagePath: "assets/image/Group 6863.png",
                title: "Groceries App",
                descriptions:
                    "A Flutter-based groceries shopping app featuring user authentication, product listing, cart, and a responsive UI. Built with Provider for state management.",
                tech: ["Dart", "Android"],
                githubUrl: "https://github.com/zalim-388/groceries_app.git",
                isReverse: false,
              ),
              SizedBox(height: 70),
              // Project 2: Chateo
              _buildProjectSection(
                context,
                isMobile: isMobile,
                imagePath: "assets/image/chateo2.png",
                title: "Chateo",
                descriptions:
                    "A real-time chat application built with Flutter and Firebase. Supports image messaging, chat clearing, and a responsive UI design using Firestore and Firebase Storage.",
                tech: ["Dart", "Android"],
                githubUrl: "https://github.com/zalim-388/chateo.git",
                isReverse: true,
              ),
              SizedBox(height: 70),
              // Project 3: Instagram Clone
              _buildProjectSection(
                context,
                isMobile: isMobile,
                imagePath: "assets/image/instagram.png",
                title: "Instagram Clone",
                descriptions:
                    "A Flutter-based Instagram clone with BLoC state management and real-time updates. Built using Firebase for backend services.",
                tech: ["Dart", "Android"],
                githubUrl: "https://github.com/zalim-388/instagram.git",
                isReverse: false,
              ),
          
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProjectSection(
    BuildContext context, {
    required bool isMobile,
    required String imagePath,
    required String title,
    required String descriptions,
    required List<String> tech,
    required String githubUrl,
    required bool isReverse,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    Widget imageWidget = Container(
      height: isMobile ? 250 : 350,
      width: isMobile ? 350 : 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );

    Widget textWidget = Column(
      crossAxisAlignment:
          isReverse ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Text(
          "Featured Project",
          style: GoogleFonts.poppins(
            color: secondaryColor,
            fontSize: isMobile ? 14 : screenWidth * 0.009,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: isMobile ? 20 : screenWidth * 0.013,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 14),
        Container(
          width: isMobile ? double.infinity : screenWidth * 0.25,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
color: secondaryColor.withOpacity(0.1),
              // color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            descriptions,
            style: GoogleFonts.manrope(
              color: descriptionColor,
              fontSize: isMobile ? 14 : screenWidth * 0.01,
            ),
          ),
        ),
        SizedBox(height: 14),
        Row(
          mainAxisAlignment:
              isReverse ? MainAxisAlignment.start : MainAxisAlignment.end,
          children:
              tech
                  .map(
                    (t) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        t,
                        style: GoogleFonts.poppins(
                          color: Colors.white60,
                          fontSize: isMobile ? 13 : screenWidth * 0.009,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                  .toList(),
        ),

        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse(githubUrl));
          },
          child: const Icon(Icons.link, color: Colors.white70, size: 25),
        ),
      ],
    );

    return isMobile
        ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [imageWidget, const SizedBox(height: 20), textWidget],
        )
        : Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              isReverse
                  ? [
                    Expanded(child: textWidget),
                    const SizedBox(width: 60),
                    imageWidget,
                  ]
                  : [
                    imageWidget,
                    const SizedBox(width: 60),
                    Expanded(child: textWidget),
                  ],
        );
  }
}
