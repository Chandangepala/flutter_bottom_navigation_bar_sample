import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_bar_sample/pages/account.dart';
import 'package:flutter_bottom_navigation_bar_sample/pages/home.dart';
import 'package:flutter_bottom_navigation_bar_sample/pages/messsage.dart';
import 'package:flutter_bottom_navigation_bar_sample/pages/settings.dart';

//class homepage which extends a stateful widget
class HomePage extends StatefulWidget{

  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();

}

//class _Homepage which extends State widget
class _HomePageState extends State<HomePage>{
  int _selectedIndex = 0;

  //function to dynamically navigate bottom navigation bar
  void _navigateBottomBar(int index){
      setState((){
        _selectedIndex = index;
      });
  }

  //list of widgets
  final List<Widget> _pages = [
    UserHome(),
    UserMessage(),
    UserSettings(),
    UserAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //current index of bottom navigation bar page
        onTap: _navigateBottomBar, //method to be called when bottom navigation bar item clicked
        type: BottomNavigationBarType.fixed, //bottom navigtion bar type
        //bottom navigation bar items
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }

}