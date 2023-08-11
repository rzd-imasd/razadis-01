import 'package:flutter/material.dart';
import 'package:razadis/presentation/widgets/widgets.dart';


class MentalHealthScreen extends StatelessWidget {
  static const String name = 'mental_health_screen';

  const MentalHealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.green[100]), label: '234'),
          BottomNavigationBarItem(icon: Icon(Icons.home, color:Colors.green[100]), label: '45'),
          BottomNavigationBarItem(icon: Icon(Icons.home, color:Colors.green[100]), label: 'dhh'),
          BottomNavigationBarItem(icon: Icon(Icons.home, color:Colors.green[100]), label: 'dfghfgh'),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // gettings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // usuario
                      Column(
                        children: [
                          const Text('Hi, Raul', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                          const SizedBox(height: 8,),
                          Text('04 Ago, 2023', style: TextStyle(color: Colors.blue[200]))
                        ],
                      ),
                      // notificaciones
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(Icons.notifications, color: Colors.white,)
                      )
                    ],
                  ),
            
                  const SizedBox(height: 25),
            
                  // search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 5,),
                        Text('Search', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
            
                  const SizedBox(height: 25),
            
                  // how do you feel?
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('How do you feel?', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                      Icon(Icons.more_horiz, color: Colors.white,)
                    ],
                  ),
            
                  const SizedBox(height: 25),
            
                  // botons emogin
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // boton 1
                      ZdBotonTool(
                        icon: Icons.ac_unit,
                        texto: 'Texto',
                      ),
            
                      // boton 2
                      ZdBotonTool(
                        icon: Icons.ac_unit,
                        texto: 'Texto',
                      ),
            
                      // boton 3
                      ZdBotonTool(
                        icon: Icons.ac_unit,
                        texto: 'Texto',
                      ),
            
                      // boton 4
                      ZdBotonTool(
                        icon: Icons.ac_unit,
                        texto: 'Texto',
                      ),
                    ],
                  ),
            
                ],
              ),
            ),

            const SizedBox(height: 25,),

            Expanded(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                      color: Colors.grey[100],
                      child: Center(
                        child: Column(
                          children: [
                            // excersices heading
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Excercises', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                Icon(Icons.more_horiz)
                              ],
                            ),
                  
                            const SizedBox(height: 10,),
                  
                            // listview of excersices
                           Expanded(
                            child: ListView(
                              children: const [
                                 ZdBotonTile(
                                  icon: Icons.favorite,
                                  title: 'Speaking Skills',
                                  subtitle: '16 excercises',
                                  color: Colors.orange,
                                 ),
                                 ZdBotonTile(
                                  icon: Icons.access_time,
                                  title: 'Speaking Skills',
                                  subtitle: '16 excercises',
                                  color: Colors.green,
                                 ),
                                 ZdBotonTile(
                                  icon: Icons.account_balance,
                                  title: 'Speaking Skills',
                                  subtitle: '16 excercises',
                                  color: Colors.blue,
                                 ),
                                 ZdBotonTile(
                                  icon: Icons.account_box,
                                  title: 'Speaking Skills',
                                  subtitle: '16 excercises',
                                  color: Colors.pink,
                                 )
                              ],
                            ),
                           )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                      border: const Border.fromBorderSide(BorderSide(width: 0.2, color: Colors.grey))
                    ),
                    height: 10,
                    width: 60,
                  )
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}