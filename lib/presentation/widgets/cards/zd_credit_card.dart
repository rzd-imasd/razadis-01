import 'package:flutter/material.dart';

class ZdCreditCard extends StatelessWidget {
  const ZdCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        // margin: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(25)
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text('Balance', style: TextStyle(color: Colors.white)),
            SizedBox(height: 10),
            Text('\$ 5,345.45', style: TextStyle(color: Colors.white, fontSize: 24)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('**** 2345', style: TextStyle(color: Colors.white)),
                Text('10/24', style: TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}