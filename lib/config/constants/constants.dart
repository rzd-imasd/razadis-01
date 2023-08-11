// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContentCard {
  final String title;
  final String route;
  final IconData icon;

  ContentCard({
    required this.title,
    required this.route, 
    required this.icon,
  });
}

final List<ContentCard> botones = [
  ContentCard(title: 'Discover', route: '/discover', icon: Icons.abc),
  ContentCard(title: 'Expense', route: '/expence', icon: Icons.abc),
  ContentCard(title: 'Medical', route: '/medical', icon: Icons.abc),
  ContentCard(title: 'Mental', route: '/mental', icon: Icons.abc),
  ContentCard(title: 'Wallet', route: '/wallet', icon: Icons.abc),
  ContentCard(title: 'Workout', route: '/workout', icon: Icons.abc),
  ContentCard(title: 'Onbording', route: '/onbording', icon: Icons.abc),
];

var myDefaultBackground = Colors.grey[300];

var MyAppBar = AppBar(
  backgroundColor: Colors.grey[500],
);

var MyDrawer = Drawer(
  backgroundColor: myDefaultBackground,
  child: Column(
    children: [
      const DrawerHeader(
        child: Text('Menu principal')
      ),
      // ListTile(
      //   leading: Icon(Icons.home),
      //   title: Text('Home'),
      // )
      Expanded(
        child: ListView.builder(
          itemCount: botones.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(botones[index].icon),
              title: Text(botones[index].title),
              onTap: () {
                context.push(botones[index].route);
              },
            );
          },
        ),
      )
    ],
  ),
);