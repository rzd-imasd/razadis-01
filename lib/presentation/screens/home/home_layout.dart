import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget webScaffold;

  const HomeLayout({super.key, required this.mobileScaffold, required this.tabletScaffold, required this.webScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 550) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tabletScaffold;
        } else {
          return webScaffold;
        }
      },
    );
  }
}