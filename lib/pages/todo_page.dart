import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // text editing controller to get access to what the user type
  TextEditingController myController = TextEditingController();

//greeting message variable
  String greetingMessage = "";

  //greetUser method
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "Hello, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //greet User message
          Text(greetingMessage),

          //textfield
          TextField(
            controller: myController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Type your name..",
            ),
          ),

          //button
          ElevatedButton(
            onPressed: greetUser,
            child: Text("Tap"),
          ),
        ],
      ),
    )));
  }
}
