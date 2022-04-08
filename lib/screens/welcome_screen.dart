import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'WelcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    controller.forward();

    animation =
        ColorTween(begin: Colors.blue, end: Colors.white).animate(controller);

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'ChatMates',
                      textStyle: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF353E42),
                      ),
                    ),
                  ],
                  totalRepeatCount: 4,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            KSignButton(
              color: Colors.lightBlueAccent,
              ButtonText: 'LOG IN',
              onpressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },
              tagText: 'login',
            ),
            KSignButton(
              color: Colors.blueAccent,
              ButtonText: 'REGISTER',
              onpressed: (){
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              tagText: 'register',
            ),
          ],
        ),
      ),
    );
  }
}

