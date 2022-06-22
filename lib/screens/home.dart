import 'package:flutter/material.dart';
import 'package:octane/models/logo.dart';
import 'package:octane/screens/sign_in.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).padding.top * 1.2,
          horizontal: MediaQuery.of(context).size.width * 0.1),
      // height: MediaQuery.of(context).size.height -
      // MediaQuery.of(context).padding.top,
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Logo(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Text("Username"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: ((context) => SignIn())));
                    },
                    child: const Text("Log Out"),
                  ),
                ],
              ),
              const CircleAvatar(
                radius: 30,
                child: Icon(Icons.person),
              )
            ],
          )
        ],
      ),
    );
  }
}
