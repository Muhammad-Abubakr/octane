import 'package:flutter/material.dart';
import 'package:octane/models/logo.dart';
import 'package:octane/screens/app.dart';
import 'package:octane/screens/sign_in.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
            children: [
              const Logo(size: 28),
              SizedBox(height: MediaQuery.of(context).size.shortestSide * 0.2),
              const TextField(
                decoration: InputDecoration(
                  labelText: "username",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.shortestSide * 0.02),
              const TextField(
                decoration: InputDecoration(
                  labelText: "email",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.shortestSide * 0.02),
              const TextField(
                decoration: InputDecoration(
                  labelText: "password",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.shortestSide * 0.02),
              const TextField(
                decoration: InputDecoration(
                  labelText: "confirm password",
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
                child: Text(style: TextStyle(color: Colors.white70), "Sign up"),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const Text("Already have an Account?"),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return const SignIn();
              }));
            },
            child: const Text("Sign In"),
          )
        ],
      ),
    );
  }
}
