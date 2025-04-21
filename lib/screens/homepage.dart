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

  Future<void> _launcherUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await launchUrl(uri, mode: LaunchMode.externalApplication)) {}
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.ismobile(context);

    return Scaffold(
      body: 
    Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(color: BackgroundColor),
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
                  _buildNavButton("About", aboutKey),
                  _buildNavButton("Projects", projectKey),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, I'm Salim 👋",
                          style: TextStyle(fontSize: 22, color: secondarycolor),
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
                                  side: BorderSide(color: secondarycolor),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(width: isMobile ? 5 : 10),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: secondarycolor),
                              ),
                              child: IconButton(
                                onPressed:
                                    () => _launcherUrl(
                                      "https://github.com/zalim-388",
                                    ),
                                icon: Icon(
                                  FontAwesomeIcons.github,
                                  color: secondarycolor,
                                  size: 16,
                                ),
                              ),
                            ),
                            SizedBox(width: isMobile ? 5 : 10),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: secondarycolor),
                              ),
                              child: IconButton(
                                onPressed:
                                    () => _launcherUrl(
                                      "https://www.linkedin.com/in/salim-a31335351/",
                                    ),
                                icon: Icon(
                                  FontAwesomeIcons.linkedin,
                                  color: secondarycolor,
                                  size: 16,
                                ),
                              ),
                            ),
                            SizedBox(width: isMobile ? 5 : 10),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: secondarycolor),
                              ),
                              child: IconButton(
                                onPressed:
                                    () => _launcherUrl(
                                      "https://www.instagram.com/zaliiim__?igsh=emg5NTZ3Z3pjNGkz",
                                    ),
                                icon: Icon(
                                  FontAwesomeIcons.instagram,
                                  color: secondarycolor,
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

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
            SizedBox(key: aboutKey, child: const Aboutme()),
            SizedBox(key: projectKey, child: const ProjectScreen()),
            SizedBox(key: contactKey, child: const ContactScreen()),
          ],
        ),
      ),
    )
    );
  }

  Widget _buildNavButton(String title, GlobalKey key) {
    bool _ishovered = false;
    return StatefulBuilder(
      builder: (context, setState) {
        return MouseRegion(
          onEnter: (event) => setState(() => _ishovered = true),
          onExit: (event) => setState(() => _ishovered = false),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                title == "Contact" && _ishovered
                    ? OutlinedButton(
                      onPressed: () => scrollToSection(key),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: secondarycolor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      child: Text(
                        title,
                        style: TextStyle(color: secondarycolor, fontSize: 16),
                      ),
                    )
                    : TextButton(
                      onPressed: () => scrollToSection(key),
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
          ),
        );
      },
    );
  }
}
