import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const routeName = "/login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            getHeader(),
            SizedBox(
              height: 10,
            ),
            buildTitle(),
            SizedBox(
              height: 16,
            ),
            _userInput("Enter Email", Icons.email),
            _userInput("Enter Password", Icons.lock),
            SizedBox(
              height: 10,
            ),
            _loginButton(),
            SizedBox(
              height: 10,
            ),
            _forgotText(),
            Spacer(),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            _registerSection(),
          ],
        ),
      ),
    );
  }

  //header section
  Widget getHeader() {
    return Container(
      height: 175,
      color: Colors.blue[600],
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          "Videogram App",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  //title
  Widget buildTitle() {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 14,
          ),
          Text("Welcom Back",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w800)),
        ],
      ),
    );
  }

  //for user input
  Widget _userInput(String hText, IconData icon) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
        child: TextField(
          decoration: InputDecoration(hintText: hText, icon: Icon(icon)),
        ),
      ),
    );
  }

  //login button
  Widget _loginButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Login"),
        ),
      ),
    );
  }

  //forgot text
  Widget _forgotText() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("Forgot Password"),
          SizedBox(
            width: 14,
          )
        ],
      ),
    );
  }

  //register section
  Widget _registerSection() {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Text("Not Member Yet? Register with Us."),
        ),
      ),
    );
  }
}
