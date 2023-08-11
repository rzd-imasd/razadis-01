import 'package:flutter/material.dart';
import 'package:razadis/presentation/widgets/widgets.dart';

class MedicalAppScreen extends StatelessWidget {
  static const String name = 'medical_app_screen';

  
  const MedicalAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello,', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text('Jerome Bell', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
            
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.deepPurple[100]
                    ),
                    width: 50,
                    child: Image.asset('assets/images/doctor-1.png'),
                  )
                ],
              ),
            ),
        
            const SizedBox(height: 25),
        
            // card->how do you fell
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/images/doctor-2.png')
                    ),
        
                    const SizedBox(width: 20),
        
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('How do you feel?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        
                          const SizedBox(height: 12),
        
                          const Text('Fill out your medical card right now', style: TextStyle(fontSize: 14)),
        
                          const SizedBox(height: 12),
                          
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.purple[300],
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: const Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              )
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
        
            const SizedBox(height: 25),
        
            // searche bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[50],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search, color: Color(0xFFB39DDB)),
                    border: InputBorder.none,
                    hintText: 'How can we help you?',
                    hintStyle: TextStyle(color: Colors.deepPurple[200])
                  ),
                ),
              ),
            ),
        
            const SizedBox(height: 25),
        
            // horizontal listview
            Container(
              height: 80,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ZdIconCard(iconPath: 'assets/images/tooth.png', categoryName: 'Destint'),
                  ZdIconCard(iconPath: 'assets/images/surgeon.png', categoryName: 'Surgeon'),
                  ZdIconCard(iconPath: 'assets/images/medicine.png', categoryName: 'Pharmacist')
                ],
              ),
            ),
        
            const SizedBox(height: 25),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text('Doctor list', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Container(
                    color: Colors.transparent,
                    width: 50,
                    child: Text('See all', style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold, fontSize: 16),),
                  )
                ],
              ),
            ),
        
            const SizedBox(height: 15),
        
            // doctor list
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ZdDoctorCard(
                    imagePath: 'assets/images/doctor-1.png',
                    rate: 4.9,
                    doctorName: 'Dr. Arlene McCoy',
                    doctorTitle: 'Therapist, 7 y.e.',
                  ),
                  ZdDoctorCard(
                    imagePath: 'assets/images/doctor-1.png',
                    rate: 4.9,
                    doctorName: 'Dr. Arlene McCoy',
                    doctorTitle: 'Therapist, 7 y.e.',
                  ),
                  ZdDoctorCard(
                    imagePath: 'assets/images/doctor-1.png',
                    rate: 4.9,
                    doctorName: 'Dr. Arlene McCoy',
                    doctorTitle: 'Therapist, 7 y.e.',
                  )
                ],
              )
            ),
        
             const SizedBox(height: 15),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25),
            //   child: ,
            // ),
        
          ],
        ),
      ),
    );
  }
}