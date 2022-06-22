import 'package:flutter/material.dart';
import 'package:device_apps/device_apps.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // getting applications from device
  Future getApplications() async {
    List<Application> apps = await DeviceApps.getInstalledApplications();
    return apps;
  }

  @override
  Widget build(BuildContext context) {
    // get navigation bar shape
    OutlinedBorder getBorder(Set<MaterialState> states) {
      return const CircleBorder();
    }

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: Card(
        elevation: 5,
        color: const Color.fromARGB(255, 37, 44, 73),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(getBorder),
                ),
                child: const Icon(Icons.home_outlined,
                    color: Color.fromARGB(255, 160, 204, 109), size: 32),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(getBorder),
                ),
                child: const Icon(Icons.history,
                    color: Color.fromARGB(255, 255, 156, 156), size: 32),
              ),
              TextButton(
                onPressed: () {},
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
