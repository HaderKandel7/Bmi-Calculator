import 'package:flutter/material.dart';

class Bmi extends StatelessWidget {


  final double result;
  final String gender;
  final int age;
//  final String bb;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 50, color: Colors.grey[400],fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Card(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$bmi_result',
                      style: TextStyle(fontSize: 43),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${result.roundToDouble()}',
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
              color: Colors.pinkAccent,
              child: Container(
                  height: 70,
                  child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        "RECALCULATE",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ))),
            )
          ],
        ),
      ),
    );
  }
String bmi_result;
  Bmi({this.result, this.gender, this.age}){
    if (result < 18.5) {
      bmi_result = 'UNDERWEIGHT';
      } else if (result >= 18.5 && result <= 24.9) {
      bmi_result = 'NORMAL';
      } else if (result >= 25 && result <= 29.9) {
      bmi_result = 'OVERWEIGHT';
      } else if (result >= 30) {
      bmi_result = 'OBESE';
      }
  }
}