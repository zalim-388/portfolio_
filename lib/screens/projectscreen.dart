import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/utils/Appcolor.dart';
import 'package:personalportfolio/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ismobile = Responsive.ismobile(context);
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(color: BackgroundColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 140),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 240),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: 1,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Some Things I've build",
                style: GoogleFonts.poppins(
                  fontSize: ismobile ? 18 : 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 70),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: ismobile ? 200 : 350,
                    width: ismobile ? double.infinity : 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/image/Group 6863.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(width: 60),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Featured project",
                          style: GoogleFonts.poppins(
                            color: secondarycolor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Groceries App",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 14),
                        Container(
                          height: 120,
                          width: 370,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xB224324B),

                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.centerRight,
                          child: Text(
                            "A Flutter-based groceries shopping app featuring user authentication, product\nlisting,cart, and a responsive UI.Built with Provider for state management.'",
                            style: GoogleFonts.manrope(
                              color: description,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Dart",
                              style: GoogleFonts.poppins(
                                color: Colors.white60,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Android",
                              style: GoogleFonts.poppins(
                                color: Colors.white60,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        GestureDetector(
                          onTap: () {
                            launchUrl(
                              Uri.parse(
                                "https://github.com/zalim-388/groceries_app.git",
                              ),
                            );
                          },

                          child: Icon(
                            Icons.link,
                            color: Colors.white70,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Featured project",
                          style: GoogleFonts.poppins(
                            color: secondarycolor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Chateo",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 14),
                        Container(
                          height: 120,
                          width: 370,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xB224324B),

                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.centerRight,
                          child: Text(
                            "A real-time chat application built with Flutter and Firebase. Supports image messaging, chat clearing, and a responsive UI design using Firestore and Firebase Storage.",
                            style: GoogleFonts.manrope(
                              color: description,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Dart",
                              style: GoogleFonts.poppins(
                                color: Colors.white60,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Android",
                              style: GoogleFonts.poppins(
                                color: Colors.white60,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        GestureDetector(
                          onTap: () {
                            launchUrl(
                              Uri.parse(
                                "https://github.com/zalim-388/chateo.git",
                              ),
                            );
                          },

                          child: Icon(
                            Icons.link,
                            color: Colors.white70,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 60),

                  Container(
                    height: ismobile ? 200 : 350,
                    width: ismobile ? double.infinity : 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/image/chateo2.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: ismobile ? 200 : 350,
                    width: ismobile ? double.infinity : 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/image/instagram.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(width: 60),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Featured project",
                          style: GoogleFonts.poppins(
                            color: secondarycolor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Instagram Clone",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 14),
                        Container(
                          height: 120,
                          width: 370,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xB224324B),

                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.centerRight,
                          child: Text(
                            "A Flutter-based Instagram clone with BLoC state management and real-time updates. Built using Firebase for backend services.",
                            style: GoogleFonts.manrope(
                              color: description,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Dart",
                              style: GoogleFonts.poppins(
                                color: Colors.white60,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Android",
                              style: GoogleFonts.poppins(
                                color: Colors.white60,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        GestureDetector(
                          onTap: () {
                            launchUrl(
                              Uri.parse(
                                "https://github.com/zalim-388/instagram.git",
                              ),
                            );
                          },

                          child: Icon(
                            Icons.link,
                            color: Colors.white70,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}
