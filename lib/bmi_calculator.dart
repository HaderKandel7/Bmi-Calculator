import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi_result.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String gender = '', bb = '';
  int w = 40;
  double _value = 165.0, result;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            gender = "m";
                            print(gender);
                          });
                        },
                        child: Container(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: (gender=='m')? Colors.pinkAccent: Colors.grey[800],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/b.png',
                                  height: 90,
                                  width: 90,),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Male",
                                  style:
                                      TextStyle(fontSize: 30, color: Colors.grey[400]),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              gender = "f";
                              print(gender);
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                            color:(gender=='f')? Colors.pinkAccent: Colors.grey[800],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/woman.png',
                                  height: 90,
                                  width: 90,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.grey[400]),
                                )
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(fontSize: 22, color: Colors.grey[400],fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '${_value.round()} ',
                              style:
                                  TextStyle(fontSize: 30,color: Colors.grey[400],fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: 'cm ',
                              style: TextStyle(fontSize: 15))
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Slider(
                        min: 150,
                        max: 200,
                        activeColor: Colors.pinkAccent,
                        inactiveColor: Colors.grey,
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                            print(_value.round());
                          });
                        },
                      ),
                    ],
                  ),
                )),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                "WEIGHT",
                                style: TextStyle(fontSize: 22, color: Colors.grey[400],fontWeight: FontWeight.bold,),
                              )),
                          Text("$w",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.remove),
                                  tooltip: 'decrese volume by 10',
                                  onPressed: () {
                                    setState(() {
                                      if (w == 40)
                                        w = 40;
                                      else
                                        w--;
                                    });
                                  },
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.add),
                                  tooltip: 'Increase volume by 10',
                                  onPressed: () {
                                    setState(() {
                                      if (w == 200)
                                        w = 200;
                                      else
                                        w++;
                                    });
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                    ),
                    Expanded(
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                "AGE",
                                style: TextStyle(fontSize: 22, color: Colors.grey[400],fontWeight: FontWeight.bold),
                              )),
                          Text("$age",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Card( shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                                child: IconButton(

                                  icon: const Icon(Icons.remove),
                                  tooltip: 'decrese age',
                                  onPressed: () {
                                    setState(() {
                                      if (age == 10)
                                        age = 10;
                                      else
                                        age--;
                                    });
                                  },
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.add),
                                  tooltip: 'Increase age',
                                  onPressed: () {
                                    setState(() {
                                      if (age == 90)
                                        age = 90;
                                      else
                                        age++;
                                    });
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ), color: Colors.pinkAccent,
                child: Container(
                    height: 70,
                    child: TextButton(
                        onPressed: () => {
                          result =  (w /pow((_value.round()/100),2)),
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Bmi(result: result,
                                    age: age, gender: gender,),
                                  )),
                            },
                        child: Text(
                          "CALCULATE",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ))),
              )
            ],
          )),
    );
  }
}
