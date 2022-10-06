import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black26,
        title: const Text('home'),
      ),
      body: const Center(child: Text('home', style: TextStyle(fontSize: 32.0))),
    );
  }
}
