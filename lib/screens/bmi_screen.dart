import 'package:flutter/material.dart';
import 'package:week9/constant.dart';
import 'package:week9/widgets/calculate_button.dart';
import 'package:week9/widgets/counter.dart';
import 'package:week9/widgets/general_container.dart';
import 'package:week9/widgets/height_slider.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool? selected = false;
  double? heightValue = 160;
  int? ageValue = 0;
  int? weightValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: AppColors.mainColor,
      ),
      backgroundColor: AppColors.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  GenderCard(
                    press: () {
                      setState(() {
                        selected = true;
                      });
                    },
                    icons: Icons.male,
                    borderColor: selected!
                        ? AppColors.thirdColor
                        : AppColors.secondColor,
                    gender: 'MALE',
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GenderCard(
                    press: () {
                      setState(() {
                        selected = false;
                      });
                    },
                    icons: Icons.female,
                    borderColor: !selected!
                        ? AppColors.thirdColor
                        : AppColors.secondColor,
                    gender: 'FEMALE',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  HeightSlider(
                      val: heightValue,
                      function: (double val) {
                        setState(() {
                          heightValue = val;
                        });
                      })
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Counter(
                    addFunction: () {
                      setState(() {
                        weightValue = weightValue! + 1;
                      });
                    },
                    minFunction: () {
                      setState(() {
                        weightValue = weightValue! - 1;
                      });
                    },
                    text: 'WEIGHT',
                    val: weightValue,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Counter(
                    addFunction: () {
                      setState(() {
                        ageValue = ageValue! + 1;
                      });
                    },
                    minFunction: () {
                      setState(() {
                        ageValue = ageValue! - 1;
                      });
                    },
                    text: 'AGE',
                    val: ageValue,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Row(
                children: [
                  CalculateButton(
                    text:'CALCULATE',
                    function: () {
                      Navigator.of(context).pushNamed('result', arguments: {
                        'height': heightValue,
                        'weight': weightValue
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
