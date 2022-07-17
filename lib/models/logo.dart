import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final int size;

  const Logo({required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: size * 2,
          backgroundColor: Theme.of(context).primaryColor,
          child: Image.asset(fit: BoxFit.scaleDown, "assets/images/Octane.png"),
        ),
        // ignore: prefer_const_constructors
        Text(
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: size.toDouble(),
            fontFamily: 'Tomorrow',
          ),
          "OCTANE",
        )
      ],
    );
  }
}
