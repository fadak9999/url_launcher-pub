import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class test3 extends StatefulWidget {
  const test3({super.key});

  @override
  State<test3> createState() => _test3State();
}

class _test3State extends State<test3> {


//
  final Uri whatsapp = Uri.parse('https://wa.me/1129389812398');
  //todo111    موقع

  final Uri _url = Uri.parse('https://github.com/');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  //todo111
  ///////////
  //!  رسالة الى الرقم عبر واتساب او رساله عاديه

  Future<void> sms() async {


    final Uri smsLaunchUri = Uri(
      scheme: 'sms',
      path: '9647807791191',
      queryParameters: <String, String>{
        'body': Uri.encodeComponent('Example Subject & Symbols are allowed!'),
      },
    );
    launchUrl(smsLaunchUri);

  
  }

  //!
  ///////////
  //? مكالمه

  Future<void> tel() async {
 
    final Uri smsLaunchUri = Uri(
      scheme: 'tel',
      path: '0118 999 881 999 119 7253',
      queryParameters: <String, String>{
        'body': Uri.encodeComponent('Example Subject & Symbols are allowed!'),
      },
    );
    launchUrl(smsLaunchUri);

 
  }

  //?
  //!!!!!!!!
  Future<void> emailLaunchUri() async {
   

 String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'faha01101@gmail.com',
    query: encodeQueryParameters(<String, String>{
      'subject': 'Example Subject & Symbols are allowed!',
    }),
  );

  launchUrl(emailLaunchUri);
   

    ///
  }
  ///!!!!!!!!!!!
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              //
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        _launchUrl();
                      },
                      child: Text("http"))),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        sms();
                      },
                      child: const Text("sms"))),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        tel();
                      },
                      child: const Text("tel"))),
                         Center(
                  child: ElevatedButton(
                      onPressed: () {
                        emailLaunchUri();
                      },
                      child: const Text("emailLaunchUri"))),
                          ElevatedButton(
              onPressed: () {
                launchUrl(whatsapp);
              },
              child: const Text("whatsapp")),
            ],
          ),
        ),
      ),
    );
  }
}
