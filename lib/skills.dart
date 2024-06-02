import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsSection extends StatelessWidget {
  final List<Skill> skills = [
    Skill(name: 'Flutter', icon: Icons.phone_android),
    Skill(name: 'Dart', icon: Icons.code),
    Skill(name: 'Firebase', icon: FontAwesomeIcons.database),
    Skill(name: 'Android Studio', icon: Icons.android),
    Skill(name: 'Git', icon: FontAwesomeIcons.gitAlt),
    Skill(name: 'WordPress', icon: FontAwesomeIcons.wordpress),

    // Add more skills as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Skills'),
          const Divider(
            // This creates a horizontal line
            color: Color.fromARGB(255, 243, 241, 241),
            thickness: 1,
          ),
          //const SizedBox(height: ),
          GridView.count(
            crossAxisCount: 3, // Adjust this value as needed
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: skills.map((skill) {
              return SkillItem(skill: skill);
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class Skill {
  final String name;
  final IconData icon;

  Skill({required this.name, required this.icon});
}

class SkillItem extends StatelessWidget {
  final Skill skill;

  SkillItem({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(skill.icon, color: Colors.white, size: 40),
        const SizedBox(height: 5),
        Text(
          skill.name,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
