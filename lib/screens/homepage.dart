import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/screens/Aboutme.dart';
import 'package:personalportfolio/screens/contactscreen.dart';
import 'package:personalportfolio/screens/projectscreen.dart';
import 'package:personalportfolio/utils/Appcolor.dart';
import 'package:personalportfolio/utils/SocialIcon.dart';
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
  bool isHovered = false;
  int selectedindex = 0;

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

  void onNavBarTap(int index) {
    setState(() {
      selectedindex = index;
    });

    switch (index) {
      case 0:
        scrollToSection(homeKey);
        break;
      case 1:
        scrollToSection(aboutKey);
        break;
      case 2:
        scrollToSection(projectKey);
        break;
      case 3:
        scrollToSection(contactKey);
        break;
    }
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.ismobile(context);
    final isDesktop = Responsive.isdesktop(context);
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,

      bottomNavigationBar:
          isMobile
              ? BottomNavigationBar(
                selectedItemColor: secondaryColor,
                unselectedItemColor: Colors.white.withOpacity(0.3),
                currentIndex: selectedindex,
                onTap: onNavBarTap,
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: backgroundColor,

                    icon: const Icon(Icons.home),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: backgroundColor,
                    icon: const Icon(Icons.person),

                    label: "About",
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: backgroundColor,
                    icon: const Icon(Icons.work),

                    label: "Projects",
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: backgroundColor,
                    icon: const Icon(Icons.contact_mail),

                    label: "Contact",
                  ),
                ],
              )
              : null,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scrollController,
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                if (isDesktop)
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenwidth * 0.05,
                        vertical: 30,
                      ),
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: 70,
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                border: Border.all(color: secondaryColor),
                                shape: BoxShape.rectangle,
                              ),
                              alignment: Alignment.center,

                              child: Transform.rotate(
                                angle: 40,
                                child: Text(
                                  "S",
                                  style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),

                          _buildNavButton("Home", homeKey),
                          SizedBox(width: 15),
                          _buildNavButton("About", aboutKey),
                          SizedBox(width: 15),
                          _buildNavButton("Projects", projectKey),
                          SizedBox(width: 15),
                          _buildNavButton("Contact", contactKey),

                          // Row(
                          //   children: [
                          //     socialIcon(
                          //       FontAwesomeIcons.github,
                          //       "https://github.com/zalim-388",
                          //     ),

                          //     SizedBox(width: 20),
                          //     socialIcon(
                          //       FontAwesomeIcons.linkedin,
                          //       "https://www.linkedin.com/in/salim-a31335351/",
                          //     ),
                          //     SizedBox(width: 20),
                          //     socialIcon(
                          //       FontAwesomeIcons.instagram,
                          //       "https://www.instagram.com/zaliiim__?igsh=emg5NTZ3Z3pjNGkz",
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),

                // Footer with Social Icons for Mobile
                if (isMobile)
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            socialIcon(
                              FontAwesomeIcons.github,
                              "https://github.com/zalim-388",
                            ),
                            socialIcon(
                              FontAwesomeIcons.linkedin,
                              "https://www.linkedin.com/in/salim-a31335351/",
                            ),
                            socialIcon(
                              FontAwesomeIcons.instagram,
                              "https://www.instagram.com/zaliiim__?igsh=emg5NTZ3Z3pjNGkz",
                            ),

                            socialIcon(
                              FontAwesomeIcons.x,
                              "https://x.com/zaalim388",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                // MAIN SECTION
                Container(
                  key: homeKey,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 20 : screenwidth * 0.1,
                    vertical: isMobile ? 250 : 280,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: isMobile ? 0 : screenwidth * 0.1,
                    ),
                    child: Column(
                      crossAxisAlignment:
                          isMobile
                              ? CrossAxisAlignment.center
                              : CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, I'm Salim 👋",
                          style: TextStyle(
                            fontSize: isMobile ? 18 : 25,
                            color: secondaryColor,
                            fontWeight: FontWeight.normal,
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
                            color: descriptionColor,
                            height: 1.6,
                          ),
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment:
                              isMobile
                                  ? Alignment.center
                                  : Alignment.centerLeft,

                          child: MouseRegion(
                            onEnter:
                                (event) => setState(() => isHovered = true),
                            onExit:
                                (event) => setState(() => isHovered = false),

                            child: GestureDetector(
                              onTap: () {
                                print("Download CV clicked");
                                _launchUrl(
                                  "https://drive.google.com/uc?export=download&id=1VtRVQYa9DTEEqSijQ89LuwFNh2NDB5s2",
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 250,
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
                                alignment: Alignment.center,
                                child: Text(
                                  "Download CV",
                                  style: TextStyle(
                                    color:
                                        isHovered ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  key: aboutKey,
                  height: isMobile ? 1100 : 1300,
                  width: double.infinity,

                  child: Aboutme(contactKey: contactKey),
                ),
                SizedBox(
                  key: projectKey,
                  height: isMobile ? 900 : 1700,
                  width: double.infinity,

                  child: const ProjectScreen(),
                ),
                SizedBox(
                  key: contactKey,
                  height: isMobile ? 1100 : 1300,
                  width: double.infinity,

                  child: const ContactScreen(),
                ),
              ],
            ),
          ),

          // 🔹 Fixed Vertical Divider
          if (isDesktop)
            Positioned(
              left: 60,
              bottom: 0,
              child: Column(
                children: [
                  socialIcon(
                    FontAwesomeIcons.github,
                    "https://github.com/zalim-388",
                  ),

                  SizedBox(height: 20),
                  socialIcon(
                    FontAwesomeIcons.linkedin,
                    "https://www.linkedin.com/in/salim-a31335351/",
                  ),
                  SizedBox(height: 20),
                  socialIcon(
                    FontAwesomeIcons.instagram,
                    "https://www.instagram.com/zaliiim__?igsh=emg5NTZ3Z3pjNGkz",
                  ),
                  SizedBox(height: 20),

                  socialIcon(
                    FontAwesomeIcons.x,
                    "https://x.com/zaalim388?t=utLG5FPHyEPqxAdoD9xMuw&s=09https://whatsapp.com/channel/0029Vb3Gslq6hENhWfOcV",
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: 1,
                    color: Colors.white.withOpacity(0.1),
                  ),
                ],
              ),
            ),
          if (isDesktop)
            Positioned(
              right: 0,
              bottom: 0,
              child: Column(
                children: [
                  MouseRegion(
                    onEnter: (_) => setState(() => isHovered = true),
                    onExit: (_) => setState(() => isHovered = false),
                    child:
                        isHovered
                            ? Transform.rotate(
                              angle: 90 * 3.1416 / 180,
                              child: GestureDetector(
                                onTap: () {
                                  final Uri emaillaunchuri = Uri(
                                    scheme: "mailto",
                                    path: 'zaalim388@gmail.com',
                                    query: Uri.encodeFull(
                                      'subject=Contact from Portfolio&body=Hello Salim,',
                                    ),
                                  );
                                  launchUrl(emaillaunchuri);
                                },
                                child: Text(
                                  "zaalim388@gmail.com",
                                  style: TextStyle(
                                    color: secondaryColor.withOpacity(0.5),
                                    fontSize: 16,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ),
                            )
                            : Transform.rotate(
                              angle: 90 * 3.1416 / 180,
                              child: Text(
                                "zaalim388@gmail.com",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 16,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: 1,
                    color: Colors.white.withOpacity(0.1),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildNavButton(String title, GlobalKey key) {
    bool localHover = false;

    return StatefulBuilder(
      builder: (context, setState) {
        return MouseRegion(
          onEnter: (_) => setState(() => localHover = true),
          onExit: (_) => setState(() => localHover = false),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                localHover
                    ?
                    // title == "Contact" && isHovered?
                    OutlinedButton(
                      onPressed: () => scrollToSection(key),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: secondaryColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      child: Text(
                        title,
                        style: TextStyle(
                          color: secondaryColor,
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
                          color: normalColor,

                          // color: Color(0xFFCCD6F6),
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
