import 'package:flutter/material.dart';

class FutureAuctions extends StatelessWidget {
  const FutureAuctions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Future Auctions"),
        ),
        body: Container(
          color: Colors.greenAccent,
        ));
  }
}
