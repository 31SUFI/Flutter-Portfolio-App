import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:permission_handler/permission_handler.dart';

class IntroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/Sufi.png'),
          ),
          SizedBox(height: 20),
          Text(
            'Muhammad Sufiyan',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Flutter Developer 👩‍💻👨',
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'I’m capable of creating excellent mobile apps, handling every step from concept to deployment.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              const url =
                  'https://docs.google.com/document/d/1Jxth5gUbLlkiJ9f0b_Q2gUw7GYNSHYMA2WvSrCJU-bk/edit?usp=sharing';
              final Uri uri = Uri.parse(url);
              if (await canLaunchUrl(uri)) {
                if (await _requestPermission()) {
                  await launchUrl(uri);
                } else {
                  // Handle permission denial
                  // For example, show a message to the user
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Permission denied. Cannot download CV.'),
                    ),
                  );
                }
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Text('Download CV'),
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.pinkAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> _requestPermission() async {
    if (await Permission.storage.request().isGranted) {
      return true;
    } else {
      if (await Permission.storage.shouldShowRequestRationale) {
        // Show a rationale and request permission
        // For example, you can show a dialog explaining why the permission is needed
      }
      // Request permission
      PermissionStatus status = await Permission.storage.request();
      return status.isGranted;
    }
  }
}
