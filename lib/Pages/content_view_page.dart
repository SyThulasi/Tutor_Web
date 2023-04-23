import 'package:flutter/material.dart';
import 'package:tutor_web/widgets/background.dart';
import 'package:tutor_web/widgets/rounded_button_withoutIcon.dart';

import '../pallete.dart';
import '../widgets/content_button.dart';
import '../widgets/rounded_button_mini.dart';

class ContentViewPage extends StatefulWidget {
  const ContentViewPage({Key? key}) : super(key: key);

  @override
  State<ContentViewPage> createState() => _ContentViewPageState();
}

class _ContentViewPageState extends State<ContentViewPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Pallete.backgroundColor,
      ),
      drawer: Drawer(),
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              content_button(
                size: size,
                image_path: 'assets/images/chem.jpeg',
                text: 'Colours of Manganese',
              ),
              SizedBox(
                height: 15,
              ),
              content_button(
                size: size,
                image_path: 'assets/images/chem.jpeg',
                text: 'Colours of Manganese',
              ),
              SizedBox(
                height: 15,
              ),
              content_button(
                size: size,
                image_path: 'assets/images/chem.jpeg',
                text: 'Colours of Manganese',
              ),
              SizedBox(
                height: 15,
              ),
              content_button(
                size: size,
                image_path: 'assets/images/chem.jpeg',
                text: 'Colours of Manganese',
              ),
              SizedBox(
                height: 15,
              ),
              content_button(
                size: size,
                image_path: 'assets/images/chem.jpeg',
                text: 'Colours of Manganese',
              ),
              SizedBox(
                height: 15,
              ),
              content_button(
                size: size,
                image_path: 'assets/images/chem.jpeg',
                text: 'Colours of Manganese',
              ),
              SizedBox(
                height: 15,
              ),
              content_button(
                size: size,
                image_path: 'assets/images/chem.jpeg',
                text: 'Colours of Manganese',
              ),
              SizedBox(
                height: 15,
              ),
              content_button(
                size: size,
                image_path: 'assets/images/chem.jpeg',
                text: 'Colours of Manganese',
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
