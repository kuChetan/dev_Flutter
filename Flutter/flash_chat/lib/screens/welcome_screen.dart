import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

// the ability to act as a ticker for single animation for multiple we can use TickerProviderStateMixin
class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
// initialize the controller
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      // upperBound: 80.0
      // this is the keyword here and the line vsync: this says that who is going to provide the ticker for my AnimationController.. This is going to be this current _WelcomeScreenState object bcz we have added the ticker inside declaration.
    );
    // animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();

    // to put the logo inside a loop and make the logo large to small and small to large contineously.
    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed){
    //     controller.reverse(from: 1.0);
    //   }else if(status == AnimationStatus.dismissed){
    //     controller.forward();
    //   }
    // });
    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
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
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Flash Chat',
                      textStyle: TextStyle(
                    // color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                  speed: Duration(milliseconds: 300)
                    ),
                  ],
                  totalRepeatCount: 1,

                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(selectedColor: Colors.lightBlueAccent,buttonText: 'Log In',onPressed:(){Navigator.pushNamed(context, LoginScreen.id);} ,),
            RoundedButton(onPressed: (){
              Navigator.pushNamed(context, RegistrationScreen.id);
            },
            selectedColor:Colors.blueAccent ,
            buttonText: 'Registration',
            ),
          ],
        ),
      ),
    );
  }
}


