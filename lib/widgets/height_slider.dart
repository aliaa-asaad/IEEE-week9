import 'package:flutter/material.dart';

import '../constant.dart';

class HeightSlider extends StatelessWidget {
  final double? val;
  final Function(double) function;

  HeightSlider({this.val,required this.function});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            color: AppColors.secondColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('HEIGHT',style: TextStyle(fontSize: 20,color: Colors.grey),),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: '${(val)!.round()}',
                    style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  TextSpan(
                    text: 'cm',
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                ]),
              ),
              Slider(
                max: 200,
                value: val!,
                onChanged: function,
                label: 'Weight',
                activeColor: AppColors.thirdColor,
                inactiveColor: Colors.grey,
              )
            ],
          )),
    );
  }
}
