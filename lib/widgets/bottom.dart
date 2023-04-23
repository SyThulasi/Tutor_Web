import 'package:flutter/material.dart';

Container Bottom() {
  return Container(
    height: 70,
    //flex: 2,
    child: Container(
      padding: EdgeInsets.all(8),
      color: Colors.teal,
      child: Center(
        child: Column(
          children: [
            Text(
              'JM Mohamed Munsif',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Text(
              'MBBS (UG)',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            Text(
              'University of Colombo',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
