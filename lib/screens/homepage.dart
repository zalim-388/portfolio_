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

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  void initState() {
    super.initState();
  }

  void _onnavibarmobile(int index) {
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

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.ismobile(context);
    final isDesktop = Responsive.isdesktop(context);
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: BackgroundColor,

      bottomNavigationBar:
          isMobile
              ? BottomNavigationBar(
                selectedItemColor: secondarycolor,
                unselectedItemColor: Colors.white.withOpacity(0.3),
                currentIndex: selectedindex,
                onTap: _onnavibarmobile,
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: BackgroundColor,

                    icon: const Icon(Icons.home),
                    label: "Home",
                    
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: BackgroundColor,
                    icon: const Icon(Icons.person),

                    label: "About",
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: BackgroundColor,
                    icon: const Icon(Icons.work),

                    label: "Projects",
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: BackgroundColor,
                    icon: const Icon(Icons.contact_mail),

                    label: "Contact",
                  ),
                ],
              )
              : null,
      body: Stack(
        children: [
          // Positioned(
          //   top: 30,
          //   left: 0,
          //   right: 0,
          //   bottom: 10,
          //   child: Center(
          //     child: Text(
          //       "Flutter developer",
          //       style: TextStyle(
          //         fontSize: isMobile ? 70 : 140,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white.withOpacity(0.02),
          //         letterSpacing: -10,
          //       ),
          //     ),
          //   ),
          // ),
          Positioned.fill(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
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
                                border: Border.all(color: secondarycolor),
                                shape: BoxShape.rectangle,
                              ),
                              alignment: Alignment.center,

                              child: Transform.rotate(
                                angle: 40,
                                child: Text(
                                  "S",
                                  style: TextStyle(
                                    color: secondarycolor,
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
                          Spacer(),

                          Row(
                            crossAxisAlignment:
                                isMobile
                                    ? CrossAxisAlignment.center
                                    : CrossAxisAlignment.end,
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
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // MAIN SECTION
                  Container(
                    key: homeKey,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 20 : screenwidth * 0.1,
                      vertical: isMobile ? 100 : 150,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: isMobile ? 0 : screenwidth * 0.1,
                      ),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment:
                              isMobile
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, I'm Salim 👋",
                              style: TextStyle(
                                fontSize: isMobile ? 20 : 32,
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
                              crossAxisAlignment:
                                  isMobile
                                      ? CrossAxisAlignment.center
                                      : CrossAxisAlignment.start,
                              children: [
                                MouseRegion(
                                  onEnter:
                                      (event) =>
                                          setState(() => isHovered = true),
                                  onExit:
                                      (event) =>
                                          setState(() => isHovered = false),

                                  child:
                                      isHovered
                                          ? GestureDetector(
                                            onTap: () {
                                              print("Download CV clicked");
                                              _launchUrl("");
                                            },
                                            child: Container(
                                              height: 40,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: secondarycolor,
                                                ),
                                                color: secondarycolor
                                                    .withOpacity(0.3),
                                                borderRadius:
                                                    BorderRadius.circular(1),
                                              ),
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Download CV",
                                                style: TextStyle(
                                                  color: secondarycolor
                                                      .withOpacity(0.2),
                                                ),
                                              ),
                                            ),
                                          )
                                          : Container(
                                            height: 40,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: secondarycolor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(1),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Download CV",
                                              style: TextStyle(
                                                color: secondarycolor,
                                              ),
                                            ),
                                          ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // About Section
                  Container(
                    key: aboutKey,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 20 : screenwidth * 0.1,
                      vertical: isMobile ? 30 : 50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Aboutme(),
                        if (isDesktop)
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: VerticalDivider(
                              thickness: 1,
                              color: Colors.white70,
                              width: 20,
                            ),
                          ),
                      ],
                    ),
                  ),
                  // Projects Section
                  Container(
                    key: projectKey,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 20 : screenwidth * 0.1,
                      vertical: isMobile ? 30 : 50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectScreen(),
                        if (isDesktop)
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: VerticalDivider(
                              thickness: 1,
                              color: Colors.white70,
                              width: 20,
                            ),
                          ),
                      ],
                    ),
                  ),
                  // Contact Section
                  Container(
                    key: contactKey,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 20 : screenwidth * 0.1,
                      vertical: isMobile ? 30 : 50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ContactScreen(),
                        if (isDesktop)
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: VerticalDivider(
                              thickness: 1,
                              color: Colors.white70,
                              width: 20,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Footer with Social Icons for Mobile
          // if (isMobile)
          //   Container(
          //     padding: EdgeInsets.symmetric(vertical: 40),
          //     child: Column(
          //       children: [
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             socialIcon(
          //               FontAwesomeIcons.github,
          //               "https://github.com/zalim-388",
          //             ),
          //             socialIcon(
          //               FontAwesomeIcons.linkedin,
          //               "https://www.linkedin.com/in/salim-a31335351/",
          //             ),
          //             socialIcon(
          //               FontAwesomeIcons.instagram,
          //               "https://www.instagram.com/zaliiim__?igsh=emg5NTZ3Z3pjNGkz",
          //             ),

          //             socialIcon(FontAwesomeIcons.x, "https://x.com/zaalim388"),
          //           ],
          //         ),
          //         SizedBox(height: 200),

          // MAIN SECTION mobile

          // 🔹 Fixed Vertical Divider
          // Positioned(
          //   left: 60,
          //   bottom: 0,
          //   child: Column(
          //     children: [
          //       // _socialIcon(
          //       //   FontAwesomeIcons.github,
          //       //   "https://github.com/zalim-388",
          //       // ),

          //       // SizedBox(height: 20),
          //       // _socialIcon(
          //       //   FontAwesomeIcons.linkedin,
          //       //   "https://www.linkedin.com/in/salim-a31335351/",
          //       // ),
          //       // SizedBox(height: 20),
          //       // _socialIcon(
          //       //   FontAwesomeIcons.instagram,
          //       //   "https://www.instagram.com/zaliiim__?igsh=emg5NTZ3Z3pjNGkz",
          //       // ),
          //       // SizedBox(height: 20),

          //       // _socialIcon(
          //       //   FontAwesomeIcons.x,
          //       //   "https://x.com/zaalim388?t=utLG5FPHyEPqxAdoD9xMuw&s=09https://whatsapp.com/channel/0029Vb3Gslq6hENhWfOcV",
          //       // ),
          //       SizedBox(height: 20),
          //       Container(
          //         height: MediaQuery.of(context).size.height * 0.2,
          //         width: 1,
          //         color: Colors.white.withOpacity(0.1),
          //       ),
          //     ],
          //   ),
          // ),

          // Positioned(
          //   right: 0,
          //   bottom: 0,
          //   child: Column(
          //     children: [
          //       // MouseRegion(
          //       //   onEnter: (_) => setState(() => isHovered = true),
          //       //   onExit: (_) => setState(() => isHovered = false),
          //       //   child:
          //       //       isHovered
          //       //           ? Transform.rotate(
          //       //             angle: 90 * 3.1416 / 180,
          //       //             child: GestureDetector(
          //       //               onTap: () {
          //       //                 final Uri emaillaunchuri = Uri(
          //       //                   scheme: "mailto",
          //       //                   path: 'zaalim388@gmail.com',
          //       //                   query: Uri.encodeFull(
          //       //                     'subject=Contact from Portfolio&body=Hello Salim,',
          //       //                   ),
          //       //                 );
          //       //                 launchUrl(emaillaunchuri);
          //       //               },
          //       //               child: Text(
          //       //                 "zaalim388@gmail.com",
          //       //                 style: TextStyle(
          //       //                   color: secondarycolor.withOpacity(0.5),
          //       //                   fontSize: 16,
          //       //                   letterSpacing: 1.2,
          //       //                 ),
          //       //               ),
          //       //             ),
          //       //           )
          //       //           : Transform.rotate(
          //       //             angle: 90 * 3.1416 / 180,
          //       //             child: Text(
          //       //               "zaalim388@gmail.com",
          //       //               style: TextStyle(
          //       //                 color: Colors.white.withOpacity(0.5),
          //       //                 fontSize: 16,
          //       //                 letterSpacing: 1.2,
          //       //               ),
          //       //             ),
          //       //           ),
          //       // ),
          //       SizedBox(height: 20),
          //       Container(
          //         height: MediaQuery.of(context).size.height * 0.3,
          //         width: 1,
          //         color: Colors.white.withOpacity(0.1),
          //       ),
          //     ],
          //   ),
          // ),
          //   ],
          // ),
          //       )

if (isMobile)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            socialIcon(
                              FontAwesomeIcons.github,
                              "https://github.com/zalim-388",
                            ),
                            const SizedBox(width: 20),
                            socialIcon(
                              FontAwesomeIcons.linkedin,
                              "https://www.linkedin.com/in/salim-a31335351/",
                            ),
                            const SizedBox(width: 20),
                            socialIcon(
                              FontAwesomeIcons.instagram,
                              "https://www.instagram.com/zaliiim__?igsh=emg5NTZ3Z3pjNGkz",
                            ),
                            const SizedBox(width: 20),
                            socialIcon(
                              FontAwesomeIcons.xTwitter,
                              "https://x.com/zaalim388",
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "© 2025 Salim. All rights reserved.",
                          style: TextStyle(color: Colors.white.withOpacity(0.5)),
                        ),



                        const SizedBox(height: 20),
Column(
    children: [
      Container(
        key: homeKey,
        child: Homepage(), 
      ),
      Container(
        key: aboutKey,
        child: Aboutme(),
      ),
      Container(
        key: projectKey,
        child: ProjectScreen(),
      ),
      Container(
        key: contactKey,
        child: ContactScreen(),
      ),
    ],
  ),



                      ],
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
