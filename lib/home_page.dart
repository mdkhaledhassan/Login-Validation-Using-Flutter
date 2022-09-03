import 'package:day18/custom_widget.dart';
import 'package:day18/new_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 99, 153, 204),
      body: Form(
        key: _formkey,
        child: Stack(
          children: [
            Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0XFFc0b9cb),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          blurStyle: BlurStyle.normal,
                          blurRadius: 8)
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 90, left: 15, right: 15),
                      child: CustomWidget(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Email";
                          }
                          if (!value.contains("@")) {
                            return "Invalid Email";
                          }
                        },
                        controller: email,
                        pIcon: Icons.person,
                        hinttext: "Email ID",
                        text: false,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 15, right: 15),
                      child: CustomWidget(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please Enter Your Password";
                          }
                          if (value.length < 3) {
                            return "Password Too Short";
                          }
                          if (value.length > 10) {
                            return "Password Too High";
                          }
                        },
                        controller: password,
                        pIcon: Icons.lock,
                        hinttext: "Password",
                        text: true,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_box,
                                color: Color(0XFF00264D),
                              ),
                              Text(
                                "Remember Me",
                                style: TextStyle(color: Color(0XFF395173)),
                              )
                            ],
                          ),
                          Text(
                            "Forgot Password",
                            style: TextStyle(color: Color(0XFF395173)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                left: 50,
                right: 50,
                top: 105,
                child: CircleAvatar(
                  backgroundColor: Color(0XFF00264D),
                  radius: 60,
                  child: Icon(
                    Icons.person,
                    size: 70,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 480, left: 150, right: 50),
              child: InkWell(
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NewPage(
                        email: email.text,
                        password: password.text,
                      ),
                    ));
                  }
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            blurStyle: BlurStyle.normal,
                            blurRadius: 8)
                      ],
                      color: Color(0XFF9daecc),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
