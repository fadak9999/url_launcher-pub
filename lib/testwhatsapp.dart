import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class testwhatsapp extends StatefulWidget {
  const testwhatsapp({super.key});

  @override
  State<testwhatsapp> createState() => _testwhatsappState();
}

class _testwhatsappState extends State<testwhatsapp> {
  //!

  final Uri phoneNamber = Uri.parse('tel:9647807791191'); //?
  final Uri whatsapp = Uri.parse('https://wa.me/1129389812398');

  //!
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                launchUrl(whatsapp);
              },
              child: Text("whatsapp")),
//
          ElevatedButton(
              onPressed: () async {
                print(await canLaunchUrl(phoneNamber));
              },
              child: Text("222")),
//
        ],
      ),
    );
  }
}
