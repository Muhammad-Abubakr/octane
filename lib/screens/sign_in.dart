import 'package:flutter/material.dart';
import 'package:octane/models/logo.dart';
import 'package:octane/screens/app.dart';
import 'package:octane/screens/sign_up.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    int devicePaddingScaler = isLandscape ? 5 : 1;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        height: MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal:
                MediaQuery.of(context).padding.top * devicePaddingScaler,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Logo(size: 32),
              SizedBox(height: MediaQuery.of(context).size.shortestSide * 0.2),
              const TextField(
                decoration: InputDecoration(
                  labelText: "username",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.shortestSide * 0.02),
              const TextField(
                decoration: InputDecoration(
                  labelText: "password",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.shortestSide * 0.1),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return const App();
                  }));
                },
                // ignore: prefer_const_constructors
                child: Text(
                  // ignore: prefer_const_constructors
                  style: TextStyle(color: Colors.white70),
                  "Sign in",
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("Don't have an account?"),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return const SignUp();
              }));
            },
            child: const Text("Sign Up"),
          )
        ],
      ),
    );
  }
}
