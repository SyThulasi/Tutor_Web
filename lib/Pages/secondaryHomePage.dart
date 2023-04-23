import 'package:flutter/material.dart';
import 'package:tutor_web/Pages/content_view_page.dart';
import 'package:tutor_web/widgets/background.dart';
import '../Homepage/dashboarddrawer.dart';
import '../Models/roundedButton_model.dart';
import '../pallete.dart';
import '../widgets/rounded_button_withoutIcon.dart';

class SecondaryHomePage extends StatefulWidget {
  final List<RoundedButtonModel> buttonDetails;

  const SecondaryHomePage({Key? key, required this.buttonDetails})
      : super(key: key);

  @override
  State<SecondaryHomePage> createState() => _SecondaryHomePageState();
}

class _SecondaryHomePageState extends State<SecondaryHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double lengthOfButton = size.width * 0.35;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Pallete.backgroundColor,
      ),
      drawer: const DashboardDrawer(),
      //body: LearningBoosterPageBody(),
      body: Background(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width * 0.35,
                child: ListView.builder(
                  itemCount: widget.buttonDetails.length,
                  itemBuilder: (BuildContext contex, int index) {
                    return RoundedButtonWOICON(
                        text: widget.buttonDetails[index].buttonName,
                        press: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (contex) {
                            //return CameraScreen(widget.cameras);
                            return const ContentViewPage();
                          }));
                        },
                        length: size.width * 0.1);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
