import 'package:flutter/material.dart';

class ZdBotonShadow extends StatelessWidget {
  const ZdBotonShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            padding: const EdgeInsets.all(20),
            // margin: const EdgeInsets.only(bottom:8),
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: const Color(0xFFE4E4E4)),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 40,
                  spreadRadius: 10
                  // offset: Offset(0, 10)
                ),
                // BoxShadow(
                //   color: Color(0xFFD1D1D1),
                //   blurRadius: 15,
                //   offset: Offset(10, 10)
                // )
              ]
            ),
            child: Image.asset('assets/images/medicine.png')
          ),
          const SizedBox(height: 12),
          Text('Send', style: TextStyle(fontSize: 18, color: Colors.grey.shade700),)
        ],
      ),
    );
  }
}