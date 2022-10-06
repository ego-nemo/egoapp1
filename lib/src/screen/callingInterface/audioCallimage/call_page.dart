import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      backgroundColor: Colors.black26,
        title: const Text('call'),
      ),
      body: const Center(
          child: Text('call', style: TextStyle(fontSize: 32.0))),
    );
  }
}
