import 'package:flutter/material.dart';

class BoxLeftBehind extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 100,
      width: 100,
      child: Center(
        child: Text(
          'A',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
