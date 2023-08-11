import 'package:flutter/material.dart';
import 'package:razadis/presentation/screens/home/home_layout.dart';
import 'package:razadis/presentation/screens/home/scaffolds/scaffolds.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: HomeLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        webScaffold: WebScaffold(),
      ),
    );
  }
}