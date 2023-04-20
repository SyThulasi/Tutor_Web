import 'package:flutter/material.dart';
import 'package:tutor_web/pallete.dart';
import 'package:tutor_web/widgets/rounded_button.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
                        press: () {},
                        length: size.width * 0.3),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedButton(
                        text: 'Unit Wise Classes',
                        imagePath: 'assets/images/book.png',
                        press: () {},
                        length: size.width * 0.3),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedButton(
                        text: 'Pastpaer Elaborations',
                        imagePath: 'assets/images/exam.png',
                        press: () {},
                        length: size.width * 0.3),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedButton(
                        text: 'Model Paper Discussions',
                        imagePath: 'assets/images/paper1.png',
                        press: () {},
                        length: size.width * 0.3),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RoundedButton(
                        text: 'Miscellaneous',
                        imagePath: 'assets/images/miscel.png',
                        press: () {},
                        length: size.width * 0.3),
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
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Container at the bottom',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
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

class devider extends StatelessWidget {
  const devider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2,
      width: size.width * 0.3,
      child: Container(
        color: Colors.white,
      ),
    );
  }
}
