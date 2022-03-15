import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class TrialFloatingButton extends StatefulWidget {
  const TrialFloatingButton({Key? key}) : super(key: key);

  @override
  _TrialFloatingButtonState createState() => _TrialFloatingButtonState();
}

class _TrialFloatingButtonState extends State<TrialFloatingButton> {

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating NavBar Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Floating NavBar Example'),
          centerTitle: true,
        ),
        //If you want to show body behind the navbar, it should be true
        extendBody: true,
        body: Center(
          child: Text(
            "index: $_index",
            style: TextStyle(
              fontSize: 52,
            ),
          ),
        ),
        bottomNavigationBar: FloatingNavbar(
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.blue,
          margin: EdgeInsets.symmetric(vertical: 50),
          width: 400,
          onTap: (int val) => setState(() => _index = val),
          currentIndex: _index,
          items: [
            FloatingNavbarItem(icon: Icons.home_outlined, title: 'Home'),
            FloatingNavbarItem(icon: Icons.explore_outlined, title: 'Explore'),
            FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
            FloatingNavbarItem(icon: Icons.settings_outlined, title: 'Settings'),
          ],
        ),
      ),
    );
  }
}
