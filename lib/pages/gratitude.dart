import 'package:flutter/material.dart';

class Gratitude extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Icon(
          Icons.sentiment_satisfied,
          size: 120.0,
          color: Colors.orange,
        ),
      ),
    );
  }
}
