import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    int devicePaddingScaler = isLandscape ? 5 : 1;

    return Container(
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).primaryColor,
      height: MediaQuery.of(context).size.height -
          MediaQuery.of(context).padding.top,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top * 1.5,
          left: MediaQuery.of(context).padding.top * devicePaddingScaler,
          right: MediaQuery.of(context).padding.top * devicePaddingScaler,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Color.fromRGBO(36, 43, 72, 1),
              radius: 48,
              child: Icon(
                Icons.person,
                size: 48,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Edit profile picture"),
            ),
            const Divider(color: Colors.white60),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.025,
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Profile settings",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const TextField(
              decoration: InputDecoration(labelText: "username"),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const TextField(
              decoration: InputDecoration(labelText: "email"),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const TextField(
              decoration: InputDecoration(labelText: "password"),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    "Action irreversable, proceed with CAUTION!",
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
                OutlinedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(47, 255, 104, 93))),
                  onPressed: () {},
                  // ignore: prefer_const_constructors
                  child: Text(
                      // ignore: prefer_const_constructors
                      style: TextStyle(color: Colors.redAccent),
                      "Delete Account"),
                )
              ],
            ),
            const Divider(color: Colors.white60),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.025,
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Application settings",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Toggle Notifications"),
                Switch(
                  value: true,
                  onChanged: (_) {},
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                // ignore: prefer_const_constructors
                child: Text(
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                    "Save"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
