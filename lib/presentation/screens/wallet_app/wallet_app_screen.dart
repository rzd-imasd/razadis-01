import 'package:flutter/material.dart';
import 'package:razadis/presentation/widgets/botones/zd_boton_shadow.dart';
import 'package:razadis/presentation/widgets/cards/zd_credit_card.dart';
import 'package:razadis/presentation/widgets/items/zd_tile_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalletAppScreen extends StatefulWidget {
  static const String name = 'wallet_app_screen';

  const WalletAppScreen({super.key});

  @override
  State<WalletAppScreen> createState() => _WalletAppScreenState();
}

class _WalletAppScreenState extends State<WalletAppScreen> {
  int _selectedIndex = 0;
  final PageController _controller = PageController();

   void _navigateBottomBar(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.grey[300],
        floatingActionButton: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.red[200],
            shape: BoxShape.circle
          ),
          child: const Icon(
            Icons.business_center,
            color: Colors.white,
          )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedLabelStyle: const TextStyle(color: Colors.grey),
          // selectedItemColor: Colors.red[200],    
          selectedIconTheme: IconThemeData(
            color: Colors.red[200]
          ),
          currentIndex: _selectedIndex, 
          onTap: _navigateBottomBar, 
          type: BottomNavigationBarType.fixed,    
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              // title & button plus
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text('My ', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                      Text('Cards', style: TextStyle(fontSize: 28)),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle
                    ),
                    child: const Icon(Icons.add))
                ],
              ),
            ),
            const SizedBox(height: 25),

            // credicards
            Container(
              color: Colors.transparent,
              height: 200,
              child: PageView(
                // pageSnapping: false,
                // padEnds: false,
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: const [
                  ZdCreditCard(),
                  ZdCreditCard(),
                  ZdCreditCard(),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SmoothPageIndicator(controller: _controller, count: 3),
            const SizedBox(height: 20),

            // buttons
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 25.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   ZdBotonShadow(),
                   ZdBotonShadow(),
                   ZdBotonShadow()
                 ],
               ),
             ),
            const SizedBox(height: 25),

            // lista de valores
             const Padding(
               padding: EdgeInsets.all(25.0),
               child: Column(
                 children: [
                    ZdTileItem(),
                    ZdTileItem()
                 ],
               ),
             )
            ],
          ),
        ));
  }
}
