// flutter imports
import 'package:flutter/material.dart';

// local imports
import 'package:octane/screens/sign_in.dart';

// ? Home
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // ? Build
  @override
  Widget build(BuildContext context) {
    // ? HOMEPAGE WIDGET TREE
    /*
      This Container contains the components for the headers
      the widget tree should look like following

                      Container
                          |
                      ListTile
                      /   |   \
          leading ~  /    |    \ ~ trailing // ! trailing altered
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
          child: LayoutBuilder(
            builder: (context, constraints) => ListTile(
              leading: CircleAvatar(
                radius: constraints.maxWidth * 0.05,
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
                  icon: Icon(Icons.logout_outlined),
                  label: Text("logout")),
            ),
          ),
        ),
      ),
    );
  }
}
