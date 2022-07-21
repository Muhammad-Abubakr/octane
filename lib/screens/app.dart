import 'package:flutter/material.dart';
import 'package:device_apps/device_apps.dart';
import 'package:octane/screens/history.dart';
import 'package:octane/screens/home.dart';
import 'package:octane/screens/profile.dart';

class App extends StatefulWidget {
  // WidgetConstructor
  const App({Key? key}) : super(key: key);

  // Since it's a Stateful Widget
  // we have a createState() method that creates a state object
  @override
  State<App> createState() => _AppState();
}

// Then we have the Widgets State class which contains the build method
class _AppState extends State<App> {
  /*
    ! state
    below is the navigation solution that was borrowed from a friend
    It uses an 
    ? Indexed Stack
    in order to Stack the screens on top of each other
    * The order of the screen determines the indexNumber for them
    and the index number is passed to the IndexedStack along with
    the screens widget 
    ? This solution can also be used where we need multiple widgets
    ? displayed in the same position and we have ToggleButtons for 
    ? those screens  
  */
  int currentIdx = 0;
  final List<StatelessWidget> screens = const [Home(), History(), Profile()];

  // getting applications from device
  // using the
  // ? QUERY_ALL_PACKAGES permission in AndroidManifest.xml
  Future getApplications() async {
    List<Application> apps = await DeviceApps.getInstalledApplications();
    return apps;
  }

  /*
                    * Widget Tree
  BUILD method for the stateful widget that builds the widget tree
  for this widget
  
  Looks like following

                      Scaffold
                     /        \
                    /          \
                   /            \
                 body         bottomNavigationBar
                  |                    |
            IndexedStack              Card
       (currentIdx, screens)           |
                                     Padding
                                       |
                                      Row
                                    /  |  \
                                   /   |   \            
                                  /    |    \
                                 /     |     \
                        TextButton TextButton TextButton
                            |          |          |
                           Icon       Icon       Icon
                           Home      History    Person
  */

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
