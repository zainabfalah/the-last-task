import 'package:flutter/material.dart';
import '../widgets/card2.dart';
import '../widgets/card3.dart';

import '../widgets/card1.dart';

// 1
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedIndex = 0;
  @override
  List<Widget> cards = [
    Card1(),
    Card2(),
    Card3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fooder', style: Theme.of(context).textTheme.headline6),
      ),
      body: cards[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {
          setState(() {
            selectedIndex = i;
          });
          print(selectedIndex);
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank), label: 'recipes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'card 3'),
        ],
      ),
    );
  }
}
