import 'package:flutter/material.dart';

class ZdBotonTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const ZdBotonTile({super.key, required this.icon, required this.title, required this.subtitle, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    color: color,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    )
                  ),
                ),
                const SizedBox(width: 12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    const SizedBox(height: 5,),
                    Text(subtitle, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 14)),
                  ],
                ),
                
              ],
            ),
            const Icon(Icons.more_horiz),
          ],
        ),
        // child: const ListTile(
        //   leading: Icon(Icons.favorite),
        //   title: Text('Spoking skills'),
        //   subtitle: Text('15 excercises'),
        // ),
      ),
    );
  }
}