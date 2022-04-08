import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro extends StatelessWidget {
  static const id = 'Intro';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: IntroductionScreen(
      pages: [
        PageViewModel(
          image: Image(image: AssetImage('images/logo.png'),
          height: 200.0,
          width: 200.0,),
          title: " ",
          bodyWidget: Column(
            children: [
              Text('Welcome',style: kIntroText,),
              Text('TO',style: kIntroText),
              Text('ChatMates',style: kIntroText)
            ],
          ),
        ),
      ],
      done: Text('Let\'s Chat',style: kIntroText,),
      next: Text('Let\'s Chat'),
      onDone: (){
        Navigator.pushNamed(context, WelcomeScreen.id);
      },
      showDoneButton: true,
      showNextButton: true,
          dotsFlex: 0,
          dotsDecorator: DotsDecorator(),
          showBackButton: false,
    ),
    );
  }
}
