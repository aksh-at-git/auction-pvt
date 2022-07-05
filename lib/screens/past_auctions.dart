import 'package:flutter/material.dart';

class PastAuctions extends StatelessWidget {
  const PastAuctions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Past Auctions"),
        ),
        body: Container(
          color: Colors.purpleAccent,
        ));
  }
}
