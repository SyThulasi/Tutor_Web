import 'package:flutter/material.dart';
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
    return SingleChildScrollView(
      child: Center(
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
            devider(size: size),
            RoundedButton(
                text: 'Learning Boosters',
                press: () {},
                length: size.width * 0.3),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
                text: 'Unit Wise Classes',
                press: () {},
                length: size.width * 0.3),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
                text: 'Pastpaer Elaborations',
                press: () {},
                length: size.width * 0.3),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
                text: 'Model Paper Discussions',
                press: () {},
                length: size.width * 0.3),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
                text: 'Miscellaneous', press: () {}, length: size.width * 0.3),
          ],
        ),
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
