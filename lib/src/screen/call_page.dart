import 'package:flutter/material.dart';

class CallPageScreen extends StatelessWidget {
  const CallPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('call'),
      ),
      body:
          const Center(child: Text('call', style: TextStyle(fontSize: 32.0))),
    );
  }
}