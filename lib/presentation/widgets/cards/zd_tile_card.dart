import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ZdTileCard extends StatelessWidget {
  final String title;
  final String route;
  final IconData icon;

  const ZdTileCard({super.key, required this.title, required this.route, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            Text(title),
          ],
        ),
      ),
      onTap: () {
        context.push(route);
      },
    );
  }
}