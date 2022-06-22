import 'package:flutter/material.dart';
import 'package:octane/screens/app.dart';
import 'package:octane/screens/sign_up.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      // ! body
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
          ),
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ! LOGO
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    ),
                  ],
                ),
              ),

              // ! FIELDS
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "username",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: TextField(
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          labelText: "confirm password",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return const App();
                        }));
                      },
                      child: const Text("Sign In"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // ! Bottom NavBar

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
