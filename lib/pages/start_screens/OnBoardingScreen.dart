import 'package:flutter/material.dart';
import 'package:pro_cv/main.dart';
import 'package:pro_cv/pages/login.dart';
import 'package:pro_cv/pages/start_screens/start_screen1.dart';
import 'package:pro_cv/pages/start_screens/start_screen2.dart';
import 'package:pro_cv/pages/start_screens/start_screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          children: [StartScreen1(), StartScreen2(), StartScreen3()],
        ),

        Container(
          alignment: Alignment(0, 0.60),
          child: TextButton(
              child: Text("Commencez",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
              style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(myPurple),
                  backgroundColor: MaterialStateProperty.all<Color>(myPurple),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: myPurple)))),
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()))
                  }),
        ),

        Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button commencez

                GestureDetector(
                  child: Text(
                    "Précedent",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    _controller.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                ),

                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: myPurple,
                  ),
                ),
                //button next

                GestureDetector(
                  child: Text(
                    "Suivant",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: myPurple),
                  ),
                  onTap: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                ),
              ],
            ))
        //Controller de page
      ],
    ));
  }
}
