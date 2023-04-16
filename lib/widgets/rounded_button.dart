import 'package:flutter/material.dart';

import '../pallete.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color textColor;
  final double length;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.textColor = Colors.white,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      width: length,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
        child: Text(
          text,
          style: TextStyle(color: Pallete.gradient2, fontSize: 20.0),
        ),
        onPressed: press,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        onHov);
  }
}
