import 'package:flutter/material.dart';
import 'package:more_basics/commons/styled_button.dart';
import 'package:more_basics/commons/styled_text.dart';
import 'package:more_basics/data/profile_data.dart';
import 'package:more_basics/model/profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen(this.switchScreen, {super.key});

  final void Function(String) switchScreen;

  void outlinedButtonPressed() {
    switchScreen('home-screen');
  }

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var profileIndex = 0;

  void infoClick() {
    setState(() {
      profileIndex = (profileIndex + 1) % profileData.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    Profile currentProfile = profileData[profileIndex];

    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 15,
          children: [
            // StyledButton(text: currentProfile.info[0], onPressed: () {}),
            // StyledButton(text: currentProfile.info[1], onPressed: () {}),
            // StyledButton(text: currentProfile.info[2], onPressed: () {}),
            StyledText(currentProfile.text, 30, color: Colors.white),
            ...currentProfile.getShuffledList().map(
              (info) => StyledButton(
                text: info,
                onPressed: infoClick,
              ),
            ),

            SizedBox(
              height: 50,
            ),

            OutlinedButton.icon(
                onPressed: widget.outlinedButtonPressed,
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.home),
                label: StyledText('Home', 15, color: Colors.white),
                //child: StyledText('Hello World!', 15),
              ),
          ],
        ),
      ),
    );
  }
}
