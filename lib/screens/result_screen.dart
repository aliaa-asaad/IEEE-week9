import 'package:flutter/material.dart';
import 'package:week9/constant.dart';
import 'package:week9/model/body.dart';

import '../widgets/calculate_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final route =
        ModalRoute.of(context)!.settings.arguments as Map<String, num?>;
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Result',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.secondColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${Body().bmiMessage(route['height'], route['weight'])}',
                        style: TextStyle(
                            fontSize: 30,
                            color: Body()
                                .bmiColor(route['height'], route['weight'])),
                      ),
                      Text(
                        '${(Body().bmi(route['height'], route['weight']))}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 70,
                            color: Colors.white),
                      ),
                      Text(
                        '${Body().bmiAdvice(route['height'], route['weight'])}',textAlign: TextAlign.center,
                        style: TextStyle(

                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.only(top: 10, bottom: 10)),
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.thirdColor)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
