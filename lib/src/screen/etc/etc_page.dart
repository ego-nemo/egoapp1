import 'package:egoapp1/src/screen/etc/setting_page.dart';
import 'package:flutter/material.dart';

class EtcPage extends StatelessWidget {
  const EtcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black26,
        title: const Text('etc'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () async {
              var push = Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const SettingPage())));
            },
          ),
        ],
      ),
    );
  }
}
