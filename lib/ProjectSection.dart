import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: 'Projects'),
          const Divider(
            // This creates a horizontal line
            color: const Color.fromARGB(255, 249, 247, 247),
            thickness: 1,
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProjectCard(
                  title: 'Shoe Mart App',
                  description:
                      '"Experience seamless shoe shopping with the Shoe Mart app—crafted with passion, offering a diverse selection, intuitive design, and secure transactions."',
                  image: 'assets/shoeApp.jpeg', // Add image asset path
                  isFirst: true,
                ),
                ProjectCard(
                  title: 'Food Delivery App',
                  description:
                      '"Experience seamless dining with the Foodie Delight app—offering diverse cuisines, easy navigation, and secure transactions."',
                  image: 'assets/foodDeliveryApp.png', // Add image asset path
                ),
                ProjectCard(
                  title: 'Stay tuned',
                  description: 'Long journey ahead',
                  image: 'assets/stayTuned.jpeg', // Add image asset path
                ),
                // Add more ProjectCard widgets as needed
              ],
            ),
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

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String image; // Add image parameter
  final bool isFirst;

  ProjectCard({
    required this.title,
    required this.description,
    required this.image, // Add image parameter
    this.isFirst = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: isFirst
          ? EdgeInsets.only(right: 10.0)
          : EdgeInsets.symmetric(horizontal: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey[200]!,
              Colors.grey[100]!,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.asset(
                image,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
