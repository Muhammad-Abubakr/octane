import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
          width: double.infinity,
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 48,
                    backgroundColor: const Color.fromARGB(255, 120, 188, 219),
                    child: Icon(
                      Icons.person,
                      size: 48,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Edit Profile Picture"))
                ],
              ),
              const Divider(color: Colors.white),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: const Text(
                      "User Profile Settings",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: TextField(
                      decoration: InputDecoration(labelText: "username"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: TextField(
                      decoration: InputDecoration(labelText: "email"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: TextField(
                      decoration: InputDecoration(labelText: "password"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            style: TextStyle(color: Colors.redAccent),
                            "Warning: Proceed with CAUTION!",
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
                                "Delete Account"))
                      ],
                    ),
                  )
                ],
              ),
              const Divider(
                color: Colors.white,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(
                      top: 16.0,
                      bottom: 32.0,
                    ),
                    child: const Text(
                      "Application Settings",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Toggle Notfications"),
                      Switch(value: false, onChanged: (_) {})
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(5),
                  ),
                  onPressed: () {},
                  child: const Text("Save"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
