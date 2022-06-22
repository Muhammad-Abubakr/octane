import 'package:flutter/material.dart';
import 'package:octane/screens/app.dart';
import 'package:octane/screens/sign_in.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            right: (MediaQuery.of(context).size.width * 0.1),
            left: (MediaQuery.of(context).size.width * 0.1),
            top: MediaQuery.of(context).padding.top * 2,
            bottom: 0,
          ),
          height: (MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Image.asset(
                        fit: BoxFit.scaleDown, "assets/images/Octane.png"),
                  ),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height -
                            MediaQuery.of(context).padding.top) *
                        0.01,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 42,
                      fontFamily: 'Tomorrow',
                    ),
                    "OCTANE",
                  )
                ],
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "username",
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "email",
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "password",
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: TextField(
                        style: TextStyle(color: Colors.white70),
                        decoration: InputDecoration(
                          labelText: "confirm password",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 16.0,
                      ),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return const App();
                            }));
                          },
                          child: const Text("Sign Up")),
                    ),
                  ],
                ),
              ),
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
