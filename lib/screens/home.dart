// flutter imports
import 'package:flutter/material.dart';

// local imports
import 'package:octane/screens/sign_in.dart';

// imports for device apps
import 'package:device_apps/device_apps.dart';

// ? Home
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // get applications from the installed device
  Future getApplications() async {
    return await DeviceApps.getInstalledApplications(includeAppIcons: true);
  }

  // ? Build
  @override
  Widget build(BuildContext context) {
    // ? HOMEPAGE WIDGET TREE
    /*
    //  This Container contains the components for the headers
    // the widget tree should look like following

    //                 Container
    //                     |
    //                 ListTile
    //                 /   |   \
    //     leading ~  /    |    \ ~ trailing // ? trailing altered
    //               /     |     \ 
    //       CircleAvatar  |   TextButton
    //            |        |         |
    //            |      title       |
    //            |        ~         |
    //            |    FittedBox     |
    //            |        |         |
    //            |      Text        |
    //            | Hello,`$Username`|
    //            |                  |
    //            |                  |
    //            |                  |
    //   Icon(Icons.person)   Icon(Icons.logout)
  
      ! Tree changed now looks like this

                                  Scaffold
                                /
                               /
                              /
                             /
                            /
                        AppBar
                          |
                    PreferredSize
                          |  
                      Container
                          |
                    LayoutBuilder // ? to use container constraints for list Tile components
                          |
                      ListTile
                      /   |   \
                 leading ~|~ trailing
                    /     |     \ 
            CircleAvatar  |   TextButton
                 |        |         |
                 |      title       |
                 |        ~         |
                 |    FittedBox     |
                 |        |         |
                 |      Text        |
                 | Hello,`$Username`|
                 |                  |
                 |                  |
                 |                  |
        Icon(Icons.person)   Icon(Icons.logout)
      

    */

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.2),
        child: Container(
          // color: const Color.fromARGB(255, 37, 44, 73),
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top * 1,
          ),
          child: ListTile(
            leading: CircleAvatar(
              radius: MediaQuery.of(context).size.shortestSide * 0.06,
              backgroundColor: Colors.blueAccent,
              // ignore: prefer_const_constructors
              child: Icon(color: Colors.white70, Icons.person),
            ),
            title: const FittedBox(
              alignment: Alignment.centerLeft,
              fit: BoxFit.scaleDown,
              child: Text("Hello, Abubakr!"),
            ),
            trailing: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.logout_outlined),
                label: const Text("logout")),
          ),
        ),
      ),
    );
  }
}
