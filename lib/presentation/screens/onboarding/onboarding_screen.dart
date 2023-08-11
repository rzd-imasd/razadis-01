import 'package:flutter/material.dart';
import 'package:razadis/presentation/screens/home/home_screen.dart';
import 'package:razadis/presentation/screens/onboarding/intro_screen/intro_page_1.dart';
import 'package:razadis/presentation/screens/onboarding/intro_screen/intro_page_2.dart';
import 'package:razadis/presentation/screens/onboarding/intro_screen/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  static const String name = 'onboarding_screen';

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3()
            ],
          ),

          // dot indicators
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(1);
                  },
                  child: const Text('skip')
                ),

                SmoothPageIndicator(controller: _controller, count: 3),

                // next or done
                onLastPage 
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(context, 
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomeScreen();
                            },
                          )
                        );
                      },
                      child: const Text('done')
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                      },
                      child: const Text('next')
                    ),
              ],
            )
          ),
        ],
      ),
    );
  }
}