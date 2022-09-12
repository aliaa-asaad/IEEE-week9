import 'package:flutter/material.dart';

import '../constant.dart';

class Counter extends StatelessWidget {
  final String? text;
  final Function() addFunction;
  final Function() minFunction;
  final int? val;
  final IconData? icon;

  const Counter({this.text, required this.addFunction, this.val, this.icon, required this.minFunction});

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
              Text(
                text!,
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              Text(
                '${val}',
                style: TextStyle(fontSize: 50, color: Colors.white,fontWeight: FontWeight.bold),
              ),
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [ CircleAvatar(backgroundColor: Colors.grey,
               child: IconButton(
                 onPressed: minFunction,
                 icon: Icon(Icons.remove,color: Colors.white,),
               ),
             ), CircleAvatar(backgroundColor: Colors.grey,
               child: IconButton(
                 onPressed: addFunction,
                 icon: Icon(Icons.add,color: Colors.white,),
               ),
             )],)
            ],
          )),
    );
  }
}
