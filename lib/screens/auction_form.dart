import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuctionForm extends StatefulWidget {
  @override
  State<AuctionForm> createState() => _AuctionFormState();
}

class _AuctionFormState extends State<AuctionForm> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Item'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Title',
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Description',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple[900],
              ),
              child: const Text('Pick date & time for auction.'),
              ),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('BYE'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.add)),
    );
  }
}

Future createItem(
    {required String description,
    required int bidPrice,
    required String bidder,
    required String imageURL,
    required String title,
    required String seller}) async {
  final docUser = FirebaseFirestore.instance.collection('auction_items').doc();

  final auctionItem = AuctionItem(
      id: docUser.id,
      description: description,
      bidPrice: bidPrice,
      bidder: bidder,
      imageURL: imageURL,
      title: title,
      seller: seller);

  final json = auctionItem.toJson();

  await docUser.set(json);
}

class AuctionItem {
  String id;
  final String description;
  final int bidPrice;
  final String bidder;
  final String imageURL;
  final String seller;
  final String title;

  AuctionItem({
    this.id = '',
    required this.description,
    required this.bidPrice,
    required this.bidder,
    required this.imageURL,
    required this.title,
    required this.seller,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'bidPrice': bidPrice,
        'bidder': bidder,
        'imageURL': imageURL,
        'title': title,
        'seller': seller
      };
}
