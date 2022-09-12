import 'package:flutter/material.dart';
import 'package:week9/constant.dart';

class CalculateButton extends StatelessWidget {
  final Function()? function;
  final String? text;

  const CalculateButton({this.function, this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: function,
        child: Text(
          text!,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.thirdColor),
          padding: MaterialStateProperty.all(EdgeInsets.only(top: 10,bottom: 10)),
        ),
      ),
    );
  }
}
