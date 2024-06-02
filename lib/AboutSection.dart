import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: 'About Me'),
          Divider(
            // This creates a horizontal line
            color: const Color.fromARGB(255, 245, 240, 240),
            thickness: 1,
          ),
          Text(
            "I'm a Muhammad Sufiyan third-year student studying Computer Science at Dawood University of Engineering & Technology. I've picked up a bunch of skills along the way, like making cool websites with WordPress, creating eye-catching designs, and coding in languages like C++, Java, and Python.\n\nEven though I haven't worked professionally yet, I'm super excited to use my love for tech to come up with awesome solutions. I'm always keeping an eye on the latest trends and breakthroughs, ready to jump in and learn something new.\n\nI'm all about teamwork too! I believe that when we work together, we can do amazing things – like turning ideas into real, working apps!",
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
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
