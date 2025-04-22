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
  bool isHovered = false;
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
            bottom: 0,
            child: Column(
              children: [
                _socialIcon(
                  FontAwesomeIcons.github,
                  "https://github.com/zalim-388",
                ),
                SizedBox(height: 20),
                _socialIcon(
                  FontAwesomeIcons.linkedin,
                  "https://www.linkedin.com/in/salim-a31335351/",
                ),
                SizedBox(height: 20),
                _socialIcon(
                  FontAwesomeIcons.instagram,
                  "https://www.instagram.com/zaliiim__?igsh=emg5NTZ3Z3pjNGkz",
                ),
                SizedBox(height: 20),
                _socialIcon(FontAwesomeIcons.x, ""),
                SizedBox(height: 20),

                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: 1,
                  color: Colors.white.withOpacity(0.1),
                ),
              ],
            ),
          ),

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
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            border: Border.all(color: secondarycolor),
                            shape: BoxShape.circle
                          ),
                          
                          child: Text(
                            " S",
                            style: TextStyle(
                              color: secondarycolor,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        

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
                      padding: const EdgeInsets.only(left: 160),
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
                                    color: Colors.white,
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
                                            8,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    key: aboutKey,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 30 : 150,
                      vertical: isMobile ? 30 : 50,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: Aboutme()),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: VerticalDivider(
                            thickness: 1,
                            color: Colors.white.withOpacity(0.3),
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
                      horizontal: isMobile ? 30 : 150,
                      vertical: isMobile ? 30 : 50,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: ProjectScreen()),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: VerticalDivider(
                            thickness: 1,
                            color: Colors.white.withOpacity(0.3),
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    key: contactKey,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 30 : 150,
                      vertical: isMobile ? 30 : 50,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: ContactScreen()),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: VerticalDivider(
                            thickness: 1,
                            color: Colors.white.withOpacity(0.3),
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

          Positioned(
            right: 40,
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
                                  color: secondarycolor.withOpacity(0.5),
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
                  height: MediaQuery.of(context).size.height * 0.2,
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
  return IconButton(
    onPressed: () => launchUrl(Uri.parse(url)),
    icon: Icon(icon, size: 19, color: description),
  );
}
