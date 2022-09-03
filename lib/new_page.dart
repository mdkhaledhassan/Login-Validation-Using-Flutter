import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  NewPage({Key? key, this.email, this.password}) : super(key: key);

  String? email;
  String? password;

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Email: " + widget.email.toString()),
            Text("Password: " + widget.password.toString()),
          ],
        ),
      ),
    );
  }
}
