import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key,required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(child: Text(text, style: TextStyle(fontSize: 23, color: Colors.white))),

    );
  }
}
