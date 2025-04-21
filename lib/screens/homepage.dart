import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/screens/Aboutme.dart';
import 'package:personalportfolio/screens/contactscreen.dart';
import 'package:personalportfolio/screens/projectscreen.dart';
import 'package:personalportfolio/utils/Appcolor.dart';
import 'package:personalportfolio/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final scrollController = ScrollController();

  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectKey = GlobalKey();
  final contactKey = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await launchUrl(uri, mode: LaunchMode.externalApplication)) {}
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.ismobile(context);

    return Scaffold(
      backgroundColor: BackgroundColor,
      body: Stack(
        children: [
          // 🔹 Fixed Vertical Divider
          Positioned(
            left: 60,
            top: 200,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: 1,
                  color: Colors.white.withOpacity(0.1),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 100,
            child: Column(
              children: [
                Transform.rotate(
                  angle: -90 * 3.1416 / 180,
                  child: GestureDetector(
                    onTap: () {
                      final Uri emaillaunchuri = Uri(
                        scheme: "mailto",
                        path: 'zaalim388@gmail.com',
                        query: Uri.decodeFull(
                          'subject=contact from portfolio&body=hello salim',
                        ),
                      );
                      launchUrl(emaillaunchuri);
                    },

                    child: Text(
                      "zaalim388@gmail.com",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 12,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 80,
                  // height: MediaQuery.of(context).size.height * 0.4,
                  width: 1,
                  color: Colors.white.withOpacity(0.3),
                ),
              ],
            ),
          ),
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            bottom: 10,
            child: Center(
              child: Text(
                "Flutter developer",
                style: TextStyle(
                  fontSize: isMobile ? 70 : 140,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.03),
                  letterSpacing: -10,
                ),
              ),
            ),
          ),

          Positioned.fill(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 40 : 80,
                      vertical: isMobile ? 40 : 80,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _buildNavButton("Home", homeKey),
                        SizedBox(width: isMobile ? 10 : 15),
                        _buildNavButton("About", aboutKey),
                        SizedBox(width: isMobile ? 10 : 15),
                        _buildNavButton("Projects", projectKey),
                        SizedBox(width: isMobile ? 10 : 15),
                        _buildNavButton("Contact", contactKey),
                      ],
                    ),
                  ),
                  // MAIN SECTION
                  Container(
                    key: homeKey,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 30 : 150,
                      vertical: isMobile ? 30 : 150,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi, I'm Salim 👋",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: secondarycolor,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Flutter Developer",
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: isMobile ? 32 : 48,
                                    letterSpacing: -1,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Flutter developer passionate about building sleek, responsive,\nand user-friendly mobile apps. Let’s bring your ideas to life!",
                                  style: GoogleFonts.inter(
                                    fontSize: isMobile ? 14 : 16,
                                    fontWeight: FontWeight.normal,
                                    color: description,
                                    height: 1.6,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    ElevatedButton.icon(
                                      onPressed: () {},
                                      label: Text(
                                        "Download CV",
                                        style: TextStyle(color: secondarycolor),
                                      ),

                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: secondarycolor,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            2,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    _socialIcon(
                                      FontAwesomeIcons.github,
                                      "https://github.com/zalim-388",
                                    ),
                                    SizedBox(width: 20),
                                    _socialIcon(
                                      FontAwesomeIcons.linkedin,
                                      "https://www.linkedin.com/in/salim-a31335351/",
                                    ),
                                    SizedBox(width: 20),
                                    _socialIcon(
                                      FontAwesomeIcons.instagram,
                                      "https://www.instagram.com/zaliiim__?igsh=emg5NTZ3Z3pjNGkz",
                                    ),
                                    SizedBox(width: 20),
                                    _socialIcon(FontAwesomeIcons.x, ""),
                                    SizedBox(height: 40),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(key: aboutKey, child: const Aboutme()),
                  SizedBox(key: projectKey, child: const ProjectScreen()),
                  SizedBox(key: contactKey, child: const ContactScreen()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(String title, GlobalKey key) {
    bool isHovered = false;

    return StatefulBuilder(
      builder: (context, setState) {
        return MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                isHovered
                    ?
                    // title == "Contact" && isHovered?
                    OutlinedButton(
                      onPressed: () => scrollToSection(key),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: secondarycolor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      child: Text(
                        title,
                        style: TextStyle(
                          color: secondarycolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                    : TextButton(
                      onPressed: () => scrollToSection(key),
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Color(0xFFCCD6F6),

                          fontSize: 16,
                        ),
                      ),
                    ),
          ),
        );
      },
    );
  }
}

Widget _socialIcon(IconData icon, String url) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6),
    child: Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: secondarycolor),
      ),
      child: IconButton(
        onPressed: () => launchUrl(Uri.parse(url)),
        icon: Icon(icon, size: 16, color: secondarycolor),
      ),
    ),
  );
}



          // child: Stack(
              //   children: [
              //     Positioned(
              //       top: 30,
              //       left: 0,
              //       right: 0,
              //       bottom: 10,
              //       child: Center(
              //         child: Text(
              //           "Flutter developer",
              //           style: TextStyle(
              //             fontSize: isMobile ? 100 : 200,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.white.withOpacity(0.01),
              //             letterSpacing: -10,
              //           ),
              //         ),
              //       ),
              //     ),



         // SizedBox(width: isMobile ? 5 : 10),
                              // Container(
                              //   height: 35,
                              //   decoration: BoxDecoration(
                              //     shape: BoxShape.circle,
                              //     border: Border.all(color: secondarycolor),
                              //   ),
                              //   child: IconButton(
                              //     onPressed:
                              //         () => _launcherUrl(
                              //           "https://github.com/zalim-388",
                              //         ),
                              //     icon: Icon(
                              //       FontAwesomeIcons.github,
                              //       color: secondarycolor,
                              //       size: 16,
                              //     ),
                              //   ),
                              // ),
                              // SizedBox(width: isMobile ? 5 : 10),
                              // Container(
                              //   height: 35,
                              //   decoration: BoxDecoration(
                              //     shape: BoxShape.circle,
                              //     border: Border.all(color: secondarycolor),
                              //   ),
                              //   child: IconButton(
                              //     onPressed:
                              //         () => _launcherUrl(
                              //           "https://www.linkedin.com/in/salim-a31335351/",
                              //         ),
                              //     icon: Icon(
                              //       FontAwesomeIcons.linkedin,
                              //       color: secondarycolor,
                              //       size: 16,
                              //     ),
                              //   ),
                              // ),
                              // SizedBox(width: isMobile ? 5 : 11),
                              // Container(
                              //   height: 35,
                              //   decoration: BoxDecoration(
                              //     shape: BoxShape.circle,
                              //     border: Border.all(color: secondarycolor),
                              //   ),
                              //   child: IconButton(
                              //     onPressed:
                              //         () => _launcherUrl(
                              //           "https://www.instagram.com/zaliiim__?igsh=emg5NTZ3Z3pjNGkz",
                              //         ),
                              //     icon: Icon(
                              //       FontAwesomeIcons.instagram,
                              //       color: secondarycolor,
                              //       size: 16,
                              //     ),
                              //   ),
                              // ),