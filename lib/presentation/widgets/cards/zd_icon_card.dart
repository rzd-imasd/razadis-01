import 'package:flutter/material.dart';

class ZdIconCard extends StatelessWidget {
  final String iconPath;
  final String categoryName;

  const ZdIconCard({super.key, required this.iconPath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            Image.asset(iconPath, height: 30),
            const SizedBox(width: 10),
            Text(categoryName)
          ],
        ),
      ),
    );
  }
}