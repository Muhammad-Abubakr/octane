import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import './screens/app.dart';
// import './screens/sign_up.dart';
import './screens/sign_in.dart';

void main() {
  // todo - this is just lazy work. Remember to fix it later
  // Restricting the device orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Octane',
      theme: ThemeData(
        colorScheme:
            const ColorScheme.dark().copyWith(primary: Colors.blueAccent),
        primaryColor: const Color.fromRGBO(26, 31, 51, 1),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white70),
          bodyMedium: TextStyle(color: Colors.white70),
          bodySmall: TextStyle(color: Colors.white70),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white70),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white24,
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
      home: const SignIn(),
    );
  }
}
