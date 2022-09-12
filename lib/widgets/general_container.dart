import 'package:flutter/material.dart';
import 'package:week9/constant.dart';

class GenderCard extends StatelessWidget {
  final Color? borderColor;
  final IconData? icons;
  final Function()? press;
  final String? gender;
  const GenderCard({this.borderColor, this.icons, this.press, this.gender});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: press,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.secondColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor!, width: 3),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icons!,
                size: 90,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                gender!,
                style: TextStyle(color: Colors.grey, fontSize: 20),
              )
            ],
          )
        ),
      ),
    );
  }
}
