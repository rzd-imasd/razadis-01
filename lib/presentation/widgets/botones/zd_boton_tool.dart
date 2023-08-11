import 'package:flutter/material.dart';

class ZdBotonTool extends StatelessWidget {
  final IconData? icon;
  final String? texto;

  const ZdBotonTool({super.key, this.icon, this.texto});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12)
          ),
          padding: const EdgeInsets.all(12),
          child: Icon(icon, color: Colors.white,)
        ),
        const SizedBox(height: 8,),
        Text(texto!, style: const TextStyle(color: Colors.white),)
      ],
    );
  }
}