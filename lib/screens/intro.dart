import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'AuthScreens/login_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    // Get.offAll(() => const LoginScreen());
    Navigator.pushReplacement(
      context,
      PageTransition(
        type: PageTransitionType.rightToLeftWithFade,
        child: const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: AppColors.splashBg,
      pages: [
        PageViewModel(
          title: '',
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.1),
              Container(
                height: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/intro.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: height * 0.1),
              const Text(
                'VIDEO CONTENT',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        PageViewModel(
          title: '',
          bodyWidget: Column(
            children: [
              SizedBox(height: height * 0.1),
              Container(
                height: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/intro.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: height * 0.1),
              const Text(
                'LIVE TRAINING',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          // decoration: pageDecoration,  //!Removed this
        ),
        PageViewModel(
          title: '',
          bodyWidget: Column(
            children: [
              SizedBox(height: height * 0.1),
              Container(
                height: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/intro.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: height * 0.1),
              const Text(
                'KEEP YOUR BODY\nFIT AND STRONG',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          // decoration: pageDecoration,  //!Removed this
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: false,
      showBackButton: false,
      back: null,
      skip: null,
      next: Container(),
      done: Container(),
      curve: Curves.fastLinearToSlowEaseIn,

      //!Skip  button
      globalFooter: SizedBox(
        height: 60,
        width: width * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.magenta,
                ),
              ),
              onPressed: () => _onIntroEnd(context),
            ),
            const Icon(
              Icons.arrow_right_alt,
              color: AppColors.magenta,
            )
          ],
        ),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: AppColors.magenta, //!Dot color
        activeSize: Size(10.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text(
          "This is the screen after Introduction",
        ),
      ),
    );
  }
}
