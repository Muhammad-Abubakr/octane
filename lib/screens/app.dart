import 'package:flutter/material.dart';
import 'package:device_apps/device_apps.dart';
import 'package:octane/screens/history.dart';
import 'package:octane/screens/home.dart';
import 'package:octane/screens/profile.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // ! state
  int currentIdx = 0;
  final List<StatelessWidget> screens = const [Home(), History(), Profile()];

  // getting applications from device
  Future getApplications() async {
    List<Application> apps = await DeviceApps.getInstalledApplications();
    return apps;
  }

  @override
  Widget build(BuildContext context) {
    // get navigation bar buttons shape
    OutlinedBorder getBorder(Set<MaterialState> states) {
      // todo | add some feedback for user when button is pressed
      return const CircleBorder();
    }

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: IndexedStack(index: currentIdx, children: screens),
      bottomNavigationBar: Card(
        elevation: 10,
        color: const Color.fromARGB(255, 37, 44, 73),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.01,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    currentIdx = 0;
                  });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(getBorder),
                ),
                child: const Icon(Icons.home_outlined,
                    color: Color.fromARGB(255, 160, 204, 109), size: 32),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    currentIdx = 1;
                  });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(getBorder),
                ),
                child: const Icon(Icons.history,
                    color: Color.fromARGB(255, 255, 156, 156), size: 32),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    currentIdx = 2;
                  });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(getBorder),
                ),
                child: const Icon(Icons.person,
                    color: Colors.blueAccent, size: 32),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
