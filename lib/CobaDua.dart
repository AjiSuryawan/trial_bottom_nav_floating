import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class CobaDua extends StatefulWidget {
  const CobaDua({Key? key}) : super(key: key);

  @override
  _CobaDuaState createState() => _CobaDuaState();
}

class _CobaDuaState extends State<CobaDua> {
  var _selectedTab = _SelectedTab.Advisory;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 300 , right: 300),
        child: DotNavigationBar(
          paddingR: EdgeInsets.only(bottom: 0, top: 0),
          enablePaddingAnimation: false,
          marginR: EdgeInsets.symmetric(vertical: 50),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.list),
                  Text("Info")
                ],
              ),
              selectedColor: Color(0xff73544C),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.add_chart),
                  Text("Mutual Fund")
                ],
              ),
              selectedColor: Color(0xff73544C),
            ),

            /// Search
            DotNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.bar_chart),
                  Text("Bonds")
                ],
              ),
              selectedColor: Color(0xff73544C),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.umbrella),
                  Text("Unit Link")
                ],
              ),
              selectedColor: Color(0xff73544C),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Column(
                children: [
                  Icon(Icons.star_border),
                  Text("Advisory")
                ],
              ),
              selectedColor: Color(0xff73544C),
            ),
          ],
        ),
      ),
    );
  }
}
enum _SelectedTab { Info, mutualFund, Bonds, UnitLink , Advisory}