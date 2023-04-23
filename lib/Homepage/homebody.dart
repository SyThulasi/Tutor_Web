import 'package:flutter/material.dart';
import 'package:tutor_web/Pages/secondaryHomePage.dart';
import 'package:tutor_web/pallete.dart';
import 'package:tutor_web/widgets/rounded_button.dart';
import 'package:tutor_web/widgets/bottom.dart';

import '../Models/roundedButton_model.dart';
import 'background.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  List<RoundedButtonModel> learningBoosterButtons = [];
  void initState() {
    super.initState();
    // Initialize the counter variable here

    learningBoosterButtons.add(
        RoundedButtonModel(buttonName: '01. General Chemistry', press: () {}));
    learningBoosterButtons.add(RoundedButtonModel(
        buttonName: '02. Chemical Calculations', press: () {}));
    learningBoosterButtons.add(RoundedButtonModel(
        buttonName: '03. Gaseous State of Matter', press: () {}));
    learningBoosterButtons
        .add(RoundedButtonModel(buttonName: '04. Energetics', press: () {}));
    learningBoosterButtons.add(RoundedButtonModel(
        buttonName: '05. Inorganic Chemistry', press: () {}));
    learningBoosterButtons.add(
        RoundedButtonModel(buttonName: '06. Organic Chemistry', press: () {}));
    learningBoosterButtons.add(
        RoundedButtonModel(buttonName: '07. Chemical Kinetics', press: () {}));
    learningBoosterButtons
        .add(RoundedButtonModel(buttonName: '08. Equilibrium', press: () {}));
    learningBoosterButtons.add(
        RoundedButtonModel(buttonName: '09. Electrochemistry', press: () {}));
    learningBoosterButtons.add(RoundedButtonModel(
        buttonName: '10. Industrial & Environmental Chemistry', press: () {}));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        children: [
          Expanded(
            flex: 15,
            child: Container(
              width: size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text(
                      'CHEMEASY',
                      style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    //devider(size: size),
                    RoundedButton(
                        text: 'Learning Boosters',
                        imagePath: 'assets/images/booster.png',
                        press: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (contex) {
                            //return CameraScreen(widget.cameras);
                            return SecondaryHomePage(
                              buttonDetails: learningBoosterButtons,
                            );
                          }));
                        },
                        length: size.width * 0.35),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedButton(
                        text: 'Unit Wise Classes',
                        imagePath: 'assets/images/book.png',
                        press: () {},
                        length: size.width * 0.35),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedButton(
                        text: 'Pastpaer Elaborations',
                        imagePath: 'assets/images/exam.png',
                        press: () {},
                        length: size.width * 0.35),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedButton(
                        text: 'Model Paper Discussions',
                        imagePath: 'assets/images/paper1.png',
                        press: () {},
                        length: size.width * 0.35),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedButton(
                        text: 'Miscellaneous',
                        imagePath: 'assets/images/miscel.png',
                        press: () {},
                        length: size.width * 0.35),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),

          // Main content of the screen goes here
          // Container(
          //   width: size.width,
          //   padding: EdgeInsets.all(16),
          //   child: Text('Main content goes here'),
          // ),
          // Container at the bottom of the screen
          Bottom(),
        ],
      ),
    );
  }
}
