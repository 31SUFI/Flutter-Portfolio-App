import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: 'Contact'),
          Divider(
            // This creates a horizontal line
            color: Colors.white,
            thickness: 1,
          ),
          Text(
            'Feel free to get in touch with me through any of the platforms below:',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.email, color: Colors.pinkAccent),
              SizedBox(width: 10),
              Text(
                'sufiyancoder@gmail.com',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.phone, color: Colors.pinkAccent),
              SizedBox(width: 10),
              Text(
                '+92 315 0261059',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              GestureDetector(
                onTap: () => _launchURL(
                    'https://www.linkedin.com/in/muhammad-sufiyan-3179aa199/'),
                child: FaIcon(FontAwesomeIcons.linkedin,
                    color: Colors.white, size: 30),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () => _launchURL('https://github.com/yourprofile'),
                child: FaIcon(FontAwesomeIcons.github,
                    color: Colors.white, size: 30),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () => _launchURL('https://twitter.com/yourprofile'),
                child: FaIcon(FontAwesomeIcons.twitter,
                    color: Colors.white, size: 30),
              ),
              // Add more social media icons as needed
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Copyright © 2024 Muhammd Sufiyan. \n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t All rights reserved.',
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ),
        ], // Close children list properly
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
