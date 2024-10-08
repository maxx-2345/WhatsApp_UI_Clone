import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screens/updates.dart';

import 'calls.dart';
import 'chat.dart';
import 'communities.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController();
    int _selectedIndex = 0;
    void onTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
      _controller.jumpToPage(index);
    }
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        onTap: onTapped,
      ),


      body: PageView(
        controller: _controller,
        children: const [
          ChatScreen(),
          UpdatesScreen(),
          CommunitiesScreen(),
          CallsScreen(),
        ],
      ),
    );
  }
}
