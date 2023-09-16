import 'package:cooking/config/theme.dart';
import 'package:cooking/screens/account/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,

      home: const Profile(),
    );
  }
}
