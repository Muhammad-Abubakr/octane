import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
        height: (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                height: 200,
                width: 200,
                child: Image.asset(
                    fit: BoxFit.scaleDown, "assets/images/Logo.png"),
              ),
              const Padding(
                padding: EdgeInsets.all(4.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(4.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "confirm password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Sign In")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text("Don't have an account?\t\t"),
                    Text(style: TextStyle(color: Colors.blueAccent), "Sign Up"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
