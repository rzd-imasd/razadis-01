import 'package:flutter/material.dart';
import 'package:razadis/presentation/widgets/widgets.dart';

class DiscoverUiScreen extends StatefulWidget {
  static const String name = 'discover_ui_screen';

  
  const DiscoverUiScreen({super.key});

  @override
  State<DiscoverUiScreen> createState() => _DiscoverUiScreenState();
}

class _DiscoverUiScreenState extends State<DiscoverUiScreen> {
  final List jobsForYou = [
    ['Apple', 'Software Eng.', 'assets/images/apple.png', '45'],
    ['Google', 'Product Dev', 'assets/images/google.png', '45'],
    ['Nike', 'Shoes Dep', 'assets/images/nike.png', '45'],
    ['Uber', 'UI Designer', 'assets/images/uber.png', '45']
  ];

  final List recentJobs = [
    ['Apple', 'Software Eng.', 'assets/images/apple.png', '45'],
    ['Google', 'Product Dev', 'assets/images/google.png', '45'],
    ['Nike', 'Shoes Dep', 'assets/images/nike.png', '45'],
    ['Uber', 'UI Designer', 'assets/images/uber.png', '45']
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 75),

            // app bar
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]
                ),
                child: Image.asset(
                  'assets/images/menu_from_left.png',
                  color: Colors.grey[800],
                ),
              ),
            ),

            const SizedBox(height: 25),

            // discover a new path
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Discovr a New Path',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26
                ),
              ),
            ),

            const SizedBox(height: 25),
      
            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 30,
                              child: Image.asset('assets/images/search.png', color: Colors.grey[600],),
                            ),
                          ),
                  
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search for a job...'
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Container(
                    height: 50,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Image.asset('assets/images/preference.png', color: Colors.white,),
                  )
                ],
              ),
            ),

            const SizedBox(height: 50),
      
            // for you job cards
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Four you',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26
                ),
              ),
            ),

            const SizedBox(height: 25),

            Container(
              height: 160,
              // color: Colors.blue[200],
              child: ListView.builder(
                itemCount: jobsForYou.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ZdJobCard(
                    companyName: jobsForYou[index][0],
                    jobTitle: jobsForYou[index][1],
                    logoImagePath: jobsForYou[index][2],
                    hourlyRate: int.parse(jobsForYou[index][3]),
                  );
                },
              ),
            ),

            const SizedBox(height: 25),
                  
            // recently add
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Recently added',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26
                ),
              ),
            ),

            const SizedBox(height: 25),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView.builder(
                  itemCount: recentJobs.length,
                  itemBuilder: (context, index) {
                    return ZdRecentJobCard(
                      companyName: recentJobs[index][0],
                      jobTitle: recentJobs[index][1],
                      logoImagePath: recentJobs[index][2],
                      hourlyRate: int.parse(recentJobs[index][3]),
                    );
                  },
                ),
              ),
            )
      
          ],
        ),
      ),
    );
  }
}