import 'package:fllutternextlevel/pages/first_page.dart';
import 'package:fllutternextlevel/pages/second_Page.dart';
import 'package:fllutternextlevel/pages/settings_page.dart';
import 'package:fllutternextlevel/pages/home_page.dart';
import 'package:fllutternextlevel/pages/profile_page.dart';
import 'package:fllutternextlevel/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/secondpage': (context) => SecondPage(),
        '/settingspage': (context) => SettingsPage(),
      },
      //Scaffold(

      // appBar: AppBar(
      //   title: Text("My App Bar"),
      //   elevation: 0, //removes shadow on appbar
      //   backgroundColor: Colors.deepPurple,
      //   leading: Icon(Icons.menu),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.logout),
      //     ),
      //   ],
      // ),
      // body: ListView(
      //     //makes it scrollable
      //     scrollDirection: Axis.horizontal,
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       //1st box
      //       Container(
      //         width: 350,
      //         color: Colors.deepPurple,
      //       ),

      //       //2nd box
      //       Container(
      //         width: 350,
      //         color: Colors.deepPurple,
      //       ),

      //       //3rd box
      //       Container(
      //         width: 350,
      //         color: Colors.deepPurple,
      //       ),

      //       // Expanded(
      //       //   child: Container(
      //       //     height: 200,
      //       //     width: 200,
      //       //     color: Colors.deepPurple,
      //       //   ),
      //       // ), //Expanded helps in dividing columns equally
      //     ]),

      // body: Container(
      //   height: 300,
      //   width: 300,
      //   padding: EdgeInsets.all(25),
      //   decoration: BoxDecoration(
      //     color: Colors.green,
      //     //curve corners
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      //   // child: Text(
      //   //   "Vick",
      //   //   style: TextStyle(
      //   //       color: Colors.white,
      //   //       fontSize: 20,
      //   //       fontWeight: FontWeight.bold,
      //   // ),
      //   // ),
      //   child: Icon(
      //     Icons.favorite,
      //     color: Colors.white,
      //     size: 64,
      //   ),
      // ),
      // ),
    );
  }
}
