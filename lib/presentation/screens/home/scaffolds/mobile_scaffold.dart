import 'package:flutter/material.dart';
import 'package:razadis/config/constants/constants.dart';
import 'package:razadis/presentation/widgets/widgets.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar,
      drawer: MyDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
                ), 
                itemBuilder: (context, index) {
                  return ZdHomeCard(
                    title: 'Paso $index',
                    route: '',
                    icon: Icons.abc,
                  );
                },
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: botones.length,
              itemBuilder: (context, index) {
                return ZdTileCard(
                  title: botones[index].title,
                  route: botones[index].route,
                  icon: botones[index].icon,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}