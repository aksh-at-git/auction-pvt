import 'package:flutter/material.dart';
import 'current_auctions.dart';
import 'future_auctions.dart';
import 'past_auctions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final screens = [
    CurrentAuctions(),
    FutureAuctions(),
    PastAuctions(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("HomeScreenPageNEW"),
      // ),
      body: IndexedStack(index: currentIndex, children: screens),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        selectedFontSize: 16.0,
        onTap: (index) => {setState(() => currentIndex = index)},
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Current"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Future"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Past"),
        ],
      ),
    );
  }
}
