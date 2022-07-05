import 'package:flutter/material.dart';

class CurrentAuctions extends StatelessWidget {
  const CurrentAuctions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Current Auctions"),
        ),
        body: Container(
          color: Colors.pinkAccent,
        ));
  }
}
