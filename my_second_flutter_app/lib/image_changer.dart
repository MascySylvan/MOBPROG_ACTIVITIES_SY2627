import 'package:flutter/material.dart';
import 'package:my_second_flutter_app/styled_text.dart';

class ImageChanger extends StatefulWidget {
  const ImageChanger({super.key});

  @override
  _ImageChangerState createState() => _ImageChangerState();
}

class _ImageChangerState extends State<ImageChanger> {
  var activeImage = 'assets/images/meme1.png';
  var ctr = 1;
  
  void onButtonPressed() {
    setState(() {
      ctr++;
      if (ctr > 4) {
        ctr = 1;
      }

      activeImage = 'assets/images/meme$ctr.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImage,
          width: 200,
          height: 200,
        ),
        SizedBox(height: 50),
        // StyledText('Hello Column with Image'),
        // StyledText('Hello Column with Image 2'),
        // StyledText('Hello Column with Image 3'),
        TextButton(
          onPressed: onButtonPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
          ),
          child: StyledText('Click Me!'),
        ),
      ],
    );
  }
}
