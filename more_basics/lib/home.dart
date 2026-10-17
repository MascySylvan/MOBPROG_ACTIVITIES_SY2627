import 'package:flutter/material.dart';
import 'package:more_basics/home_screen.dart';
import 'package:more_basics/profile/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var activeScreen = 'home-screen';

  void switchScreen(String newScreen) {
    setState(() {
      activeScreen = newScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = HomeScreen(switchScreen);

    if (activeScreen == 'profile-screen') {
      currentScreen = ProfileScreen(switchScreen);
    }

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: currentScreen,
        ),
      ),
    );
  }
}
