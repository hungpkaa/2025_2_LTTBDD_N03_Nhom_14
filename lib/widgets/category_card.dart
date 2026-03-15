import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;

  const CategoryCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),

      child: Stack(
        children: [
          /// BACKGROUND IMAGE
          Positioned.fill(child: Image.asset(image, fit: BoxFit.cover)),

          /// GRADIENT OVERLAY
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),

          /// TITLE
          Positioned(
            left: 12,
            bottom: 12,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
