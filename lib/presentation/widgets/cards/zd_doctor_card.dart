import 'package:flutter/material.dart';

class ZdDoctorCard extends StatelessWidget {
  final String imagePath;
  final double rate;
  final String doctorName;
  final String doctorTitle;

  const ZdDoctorCard({super.key, required this.imagePath, required this.rate, required this.doctorName, required this.doctorTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            // picture of doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(imagePath, height: 100)
            ),

            const SizedBox(height: 10),
    
            // rating out of 5
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow[600]),
                Text(rate.toString(), style: const TextStyle(fontWeight: FontWeight.bold))
              ],
            ),

            const SizedBox(height: 10),
    
            // doctor name
            Text(doctorName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 5),
            // docto title
            Text(doctorTitle)
          ],
        ),
      ),
    );
  }
}