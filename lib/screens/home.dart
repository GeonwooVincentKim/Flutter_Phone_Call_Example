import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _numberController = TextEditingController();
  
  @override
  void initState() {
    super.initState();
    _numberController.text = '+821048294259';
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Middle')
      ),
      child: Center(child: buildButton()),
    );
  }

  Widget buildButton() {
    final number = '+821065839661';

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
        textStyle: const TextStyle(fontSize: 24),
      ),
      child: const Text('Call'),
      onPressed: () async {
        FlutterPhoneDirectCaller.callNumber(_numberController.text);
        // final uri = Uri.parse('tel:$number');
        
        // if (await canLaunchUrl(uri)) {
        //   launchUrl(uri);
        // }
        // launchUrl('tel://$number' as Uri);
        // await FlutterPhoneDirectCaller.callNumber(number);
      },
    );
  }
}