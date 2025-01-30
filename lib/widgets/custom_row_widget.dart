
import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  CustomRowWidget({super.key, required this.text, required this.description});

  String text;

  String? description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,
            style: TextStyle(
              fontSize: 18,
            )),
        Spacer(),
        Text(description ?? '', style: TextStyle(fontSize: 18)),
      ],
    );
  }
}