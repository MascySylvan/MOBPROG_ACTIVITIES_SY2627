import 'package:flutter/material.dart';
import 'package:my_second_flutter_app/image_changer.dart';
import 'package:my_second_flutter_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.startAlignment,
    required this.endAlignment,
  });

  final Alignment startAlignment;
  final Alignment endAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.deepOrange],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        // child: Text(
        //   text,
        //   style: TextStyle(fontSize: 50, color: Colors.white),
        // ),
        // child: StyledText('Hello Styled Text'),
        // child: Image.asset(
        //   'assets/images/meme4.png',
        //   width: 200,
        //   height: 200,
        // ),
        // child: Column(
        //   //mainAxisAlignment: MainAxisAlignment.center,
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     Image.asset(
        //       'assets/images/meme3.png',
        //       width: 200,
        //       height: 200,
        //     ),
        //     SizedBox(height: 50),
        //     // StyledText('Hello Column with Image'),
        //     // StyledText('Hello Column with Image 2'),
        //     // StyledText('Hello Column with Image 3'),
        //     TextButton(
        //       onPressed: onButtonPressed,
        //       style: ButtonStyle(
        //         backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
        //         foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        //         padding: MaterialStateProperty.all<EdgeInsets>(
        //           EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        //         ),
        //       ),
        //       child: StyledText('Click Me!'),
        //     ),
        //   ],
        // ),
        child: ImageChanger(),
      ),
    );
  }
}
