import 'package:flutter/material.dart';

import '../pallete.dart';

class RoundedButtonWOICON extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color textColor;
  final double length;
  const RoundedButtonWOICON({
    Key? key,
    required this.text,
    required this.press,
    this.textColor = Colors.white,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(395, 55),
        backgroundColor: Colors.teal,
        shadowColor: Colors.transparent,
      ),
    );
  }
}
