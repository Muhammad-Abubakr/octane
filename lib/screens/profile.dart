import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  // does not really need a key for stateless widget
  // const Profile({Key? key}) : super(key: key);
  // removing _ keeping the constructor const because of flutter internals
  // like how it rebuilds it's structure

  // ignore: use_key_in_widget_constructors
  const Profile();

  /*
  Build method

                * Widget Tree

                   Container
                      |
              SingleChildScrollView
                      | 
                    Column

    Since all of content of Profile page is in a single Column
    we will divide the column based on levels depending upon dividers
    for better understanding

  ? Level-1
     \/
    ____________________................Level-2
    |                   |       // * Divider
CircleAvatar         TextButton
    |                   |
    Icon                Text
(Icons.Person)    (edit profile picture)


              ? Level-2
                  \/
Level - 1....____________________________________________________________________________.... Level-3
          |           |        |         |        |         |        |             |    // * Divider
        Padding   TextField SizedBox TextField SizedBox TextField SizedBox        Row
          |       (username)          (email)           (password)                 |
        Align                                                                /------------\
          |                                                                  |            |
        Text                                                              Expanded    OutlinedButton
  (edit profile picture)                                                     |            |
                                                                            Text         Text
                                       

                                    ?  Level-3
                                          \/
            Level - 2...._______________________________________________   
                        |                |             |               |
                     Padding            Row         SizedBox         Align
                        |            /-------\                         |
                      Align        Text    Switch                 ElevatedButton
                        |  (ToggleNotifications)                       |
                      Text                                            Text
              (Application Settings)                                 (Save)
  */

  @override
  Widget build(BuildContext context) {
    // Having different padding for different orientations
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
            // ----------------------Level-1----------------------- //
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
            // ---------------------------------------------------- //
            // ----------------------Level-2----------------------- //
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.longestSide * 0.025,
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
            SizedBox(height: MediaQuery.of(context).size.longestSide * 0.01),
            const TextField(
              decoration: InputDecoration(labelText: "email"),
            ),
            SizedBox(height: MediaQuery.of(context).size.longestSide * 0.01),
            const TextField(
              decoration: InputDecoration(labelText: "password"),
            ),
            SizedBox(height: MediaQuery.of(context).size.longestSide * 0.03),
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
            // ---------------------------------------------------- //
            // ----------------------Level-3----------------------- //
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.longestSide * 0.025,
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
            SizedBox(height: MediaQuery.of(context).size.longestSide * 0.03),
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
            // ---------------------------------------------------- //
          ],
        ),
      ),
    );
  }
}
