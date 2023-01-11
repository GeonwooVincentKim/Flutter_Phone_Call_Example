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
    return Scaffold(
        appBar: AppBar(title: const Text("Phone Number")), body: buildButton()
        // child: Center(child: buildButton()),
        );
  }

  Widget buildButton() {
    final number = '+821048294259';

    return ListTile(
      title: Text("Vincent's"),
      subtitle: Text(number),
      leading: CircleAvatar(
        backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png"),
      ),
      trailing: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.blue)
          )
        ),
        child: Text('Call'),
        onPressed: () async {
          launch('tel://$number');
          await FlutterPhoneDirectCaller.callNumber(number);
        },
      ),
    );
    // return CupertinoScrollbar(
    //   child: ListView.builder(
    //     itemCount: 20,
    //     itemBuilder: (context, index) {
    //       return CupertinoListTile(
    //         title: const Text("Vincent's"),
    //         onTap: () async {
    //           // ignore: deprecated_member_use
    //           launch('tel://$number');
    //           await FlutterPhoneDirectCaller.callNumber(number);
    //         },
    //       );
    //     },
    //   ),
    // );
    // return ListTile(
    //   title: Text("Vincent's"),
    //   subtitle: Text(number),
    //   onTap: () async {
    //     // ignore: deprecated_member_use
    //     launch('tel://$number');

    //     await FlutterPhoneDirectCaller.callNumber(number);
    //   },
    // );

    // return CupertinoListTile(
    //   title: Text("Vincent's"),
    //   onTap: () async {
    //     // ignore: deprecated_member_use
    //     launch('tel://$number');
    //     await FlutterPhoneDirectCaller.callNumber(number);
    //   },
    // );

    // return ElevatedButton(
    //   style: ElevatedButton.styleFrom(
    //     padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
    //     textStyle: const TextStyle(fontSize: 24),
    //   ),
    //   child: const Text('Call'),
    //   onPressed: () async {
    //     FlutterPhoneDirectCaller.callNumber(_numberController.text);
    //     // final uri = Uri.parse('tel:$number');

    //     // if (await canLaunchUrl(uri)) {
    //     //   launchUrl(uri);
    //     // }
    //     // launchUrl('tel://$number' as Uri);
    //     // await FlutterPhoneDirectCaller.callNumber(number);
    //   },
    // );
  }
}
