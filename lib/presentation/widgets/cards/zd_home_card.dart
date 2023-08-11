import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ZdHomeCard extends StatelessWidget {
  final String title;
  final String route;
  final IconData icon;

  const ZdHomeCard({super.key, required this.title, required this.route, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Text(title),
        ),
        onTap: () {
          context.push(route);
        },
      ),
    );
  }
}