import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Theme.of(context).primaryColor,
          child: Image.asset(fit: BoxFit.scaleDown, "assets/images/Octane.png"),
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
            fontSize: 16,
            fontFamily: 'Tomorrow',
          ),
          "OCTANE",
        )
      ],
    );
  }
}
