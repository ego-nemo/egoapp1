import 'package:egoapp1/src/screen/callingInterface/audioCallimage/call_page.dart';
import 'package:egoapp1/src/screen/chat_page.dart';
import 'package:egoapp1/src/screen/etc/etc_page.dart';
import 'package:egoapp1/src/screen/home/home_page.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  static const _screens = [Home(), CallPage(), ChatPage(), EtcPage()];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black26,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.dehaze), label: 'etc'),
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}
