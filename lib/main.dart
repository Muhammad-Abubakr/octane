import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import './screens/app.dart';
// import './screens/sign_up.dart';
import './screens/sign_in.dart';

void main() {
  // * FIXED
  // // todo - this is just lazy work. Remember to fix it later
  // // Restricting the device orientation
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: UniqueKey());

  // root
  @override
  Widget build(BuildContext context) {
    // Using MaterialApp() since we are developing for Android Only
    return MaterialApp(
      title: 'Project Octane',

      /* 
        * Setting up the Global theme data
        ? Contains colors (primary) and also (fontColors) 
        ! InputDecoration theme (important)
      */
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

      // ? The DefaultRoute that is displayed when the app is started
      home: const SignIn(),
    );
  }
}
