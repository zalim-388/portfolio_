import 'package:flutter/material.dart';
import 'package:personalportfolio/utils/Appcolor.dart';
import 'package:personalportfolio/utils/responsive.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.ismobile(context);

    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 100,
        vertical: 60,
      ),
      decoration: BoxDecoration(color: BackgroundColor),
      child: Column(
        crossAxisAlignment:
            isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Text(
            "Let's Connect",
            style: TextStyle(
              fontSize: isMobile ? 24 : 36,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Feel free to reach out via email or follow me on social media!",
            textAlign: isMobile ? TextAlign.center : TextAlign.left,
            style: TextStyle(
              fontSize: isMobile ? 14 : 18,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton.icon(
            onPressed: () {
              // open email app or contact form
            },
            icon: Icon(Icons.mail),
            label: Text("Email Me"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              textStyle: TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
