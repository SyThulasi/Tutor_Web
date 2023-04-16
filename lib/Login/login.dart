import 'package:flutter/material.dart';
import 'package:tutor_web/Homepage/homepage.dart';
import '../widgets/gradient_button.dart';
import '../widgets/login_field.dart';
import '../widgets/rounded_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign in.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              const SizedBox(height: 15),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Email'),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Password'),
              const SizedBox(height: 20),
              GradientButton(
                press: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (contex) {
                    //return CameraScreen(widget.cameras);
                    return const HomePage();
                  }));
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 15.5,
                      color: Colors.grey,
                      fontFamily: 'OverpassRegular',
                    ),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.5,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
