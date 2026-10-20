import 'package:flutter/material.dart';
import 'package:more_basics/commons/styled_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.switchScreen, {super.key});

  final void Function(String) switchScreen;

  void outlinedButtonPressed() {
    switchScreen('profile-screen');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              // Opacity(
              //   opacity: 0.1,
              //   child: Image.asset(
              //     'assets/spiderman.png',
              //     width: 300,
              //     height: 300,
              //   ),
              // ),
              
              Image.asset(
                  'assets/spiderman.png',
                  width: 300,
                  height: 300,
                  //color: const Color.fromARGB(33, 183, 59, 255),
                ),

              SizedBox(height: 10),

              StyledText('Hello World!', 30, color: Colors.white),

              // Main page button
              OutlinedButton.icon(
                onPressed: outlinedButtonPressed,
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.read_more),
                label: StyledText('Start', 15, color: Colors.white),
                //child: StyledText('Hello World!', 15),
              ),
            ],
          );
  }
}