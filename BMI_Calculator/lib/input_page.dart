import 'resultPage.dart';
import 'dart:ui';
import 'box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';
import 'function_bmi.dart';


const boxColor = Color(0xFF1D1E33);
const active = Color(0xFF1D1E33);
const deactive = Color(0xFF11132B);
const pinkk = Color(0xFFE91E63);
const label = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);
const height = TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold);

enum Gender {
  male,
  female,
}

class Input_page extends StatefulWidget {
  const Input_page({Key? key}) : super(key: key);

  @override
  _Input_pageState createState() => _Input_pageState();
}

class _Input_pageState extends State<Input_page> {
  Color maleCardColor = deactive;
  Color femaleCardColor = deactive;

  void update(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == deactive) {
        maleCardColor = active;
        femaleCardColor = deactive;
      } else {
        maleCardColor = deactive;
      }
    }
    if (gender == Gender.female) {
      if (femaleCardColor == deactive) {
        femaleCardColor = active;
        maleCardColor = deactive;
      } else {
        femaleCardColor = deactive;
      }
    }
  }

  int h = 150;
  int weight = 50;
  int age = 18;
  //Gender selected_gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primeColor,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Box(
                  maleCardColor,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        update(Gender.male);
                      });
                    },
                    child: IconContent(FontAwesomeIcons.mars, "MALE"),
                  ),
                ),
                Box(
                  femaleCardColor,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        update(Gender.female);
                      });
                    },
                    child: IconContent(FontAwesomeIcons.venus, "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(11.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: label,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        h.toString(),
                        style: height,
                      ),
                      Text(
                        'cm',
                        style: label,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 13.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 24.0),
                        overlayColor: Color(0x29EB1555) // Color(0x1fEB1555),
                        ),
                    child: Slider(
                      //Theme.of(context).copyWith(),
                      thumbColor: pinkk,
                      value: h.toDouble(),
                      min: 100.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          h = newValue.round();
                        });
                      },
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: label,
                        ),
                        Text(
                          weight.toString(),
                          style: height,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: label,
                        ),
                        Text(
                          age.toString(),
                          style: height,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Function_BMI ans=Function_BMI(weight,h);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultPage(
                  ans.status(),
                  ans.digit(),
                  ans.description(),
                )),
              );
            },
            child: Container(
              color: pinkk,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10.0),
              height: 50.0,
              // padding: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  final String text;
  final IconData icon;
  IconContent(this.icon, this.text);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: label,
        ),
      ],
    );
  }
}
//-------------------------------------------------------------------------------------------------
// this is my customize code we can dig in rabbit hole as much as we want and create according to us
//--------------------------------------------------------------------------------------------------
// class RoundIconButton extends StatelessWidget {
//   RoundIconButton(@required this.iconChild, @required this.set);
//   final Function set;
//   final IconData iconChild;
//
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       onPressed: () {
//         set;
//       },
//       child: Icon(iconChild),
//       elevation: 6.5,
//       shape: CircleBorder(),
//       fillColor: Color(0xFF4C4F5E),
//       constraints: BoxConstraints.tightFor(
//         width: 50.0,
//         height: 50.0,
//       ),
//     );
//   }
// }
