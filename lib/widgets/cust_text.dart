import 'package:flutter/material.dart';

class CustText extends StatelessWidget {
 const   CustText({ required this.text,required this.onPressed,

    super.key,
  });

 final  VoidCallback onPressed;
  final String  text;




  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          textStyle: const TextStyle(fontSize: 20),
          backgroundColor: Colors.blue,
          shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.zero),),
          child: Text(text),
    );
  }
}
