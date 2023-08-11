import 'package:flutter/material.dart';

class ZdTileItem extends StatelessWidget {
  const ZdTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // icon
              Container(
                height: 80,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Image.asset('assets/images/surgeon.png'),
              ),
              const SizedBox(width: 20),
              // text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Statistics', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  const SizedBox(width: 20),
                  Text('Statistics', style: TextStyle(color: Colors.grey[600], fontSize: 16))
                ],
              )
              // arrow
            ],
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}