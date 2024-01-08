//import 'package:fllutternextlevel/pages/second_Page.dart';
import 'package:fllutternextlevel/pages/counter_page.dart';
import 'package:fllutternextlevel/pages/home_page.dart';
import 'package:fllutternextlevel/pages/profile_page.dart';
import 'package:fllutternextlevel/pages/settings_page.dart';
import 'package:fllutternextlevel/pages/todo_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
//this keep track of current page to display
  int _selectedIndex = 0;

//this method updates the new selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//Pages we have in our app
  final List _pages = [
    // //Homepage
    // Homepage(),
    //CounterPage
    CounterPage(),
    // //Profilepage
    // ProfilePage(),
    //TodoPage
    TodoPage(),

    //Settingspage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),
      body: _pages[_selectedIndex],
      // drawer: Drawer(

      //   backgroundColor: Colors.deepPurple[100],
      //   child: Column(children: [
      //     //Common to place a drawer header here
      //     // ignore: prefer_const_constructors
      //     DrawerHeader(
      //       child: Icon(
      //         Icons.favorite,
      //         size: 48,
      //       ),
      //     ),

      //     //home page list tile
      //     ListTile(
      //       leading: Icon(Icons.home),
      //       title: Text("H O M E"),
      //       onTap: () {
      //         //go to home page
      //         Navigator.pushNamed(context, '/homepage');
      //       },
      //     ),

      //     //Settings
      //     ListTile(
      //       leading: Icon(Icons.settings),
      //       title: Text("S E T T I N G S"),
      //       onTap: () {
      //         //go to settings page
      //         Navigator.pushNamed(context, '/settings');
      //       },
      //     ),
      //   ]),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //       child: Text("Go To Second Page"),
      //       onPressed: () {
      //         //Naviget to second apage
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => SecondPage(),
      //             ));
      //       }),
      // ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            //Home
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),

            //Profile
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Home',
            ),

            //Settings
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Home',
            ),
          ]),
    );
  }
}
