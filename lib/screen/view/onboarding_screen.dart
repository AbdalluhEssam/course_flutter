import 'package:course_flutter/core/ui/color.dart';
import 'package:course_flutter/screen/view/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Introduction> list = [
      Introduction(
        titleTextStyle: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
        subTitleTextStyle: const TextStyle(fontSize: 18,color: Color.fromRGBO(8, 44, 80, 0.5)),
        imageWidth: 500,
        imageHeight: 300,
        title: 'Unmatched Quality & Prices',
        subTitle: 'Qualified & verified professionals',
        imageUrl: 'assets/images/onboradrding_1.png',
      ),
      Introduction(
        titleTextStyle: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
        subTitleTextStyle: const TextStyle(fontSize: 18,color: Color.fromRGBO(8, 44, 80, 0.5)),
        imageWidth: 500,
        imageHeight: 300,
        title: 'Full House Keeping ',
        subTitle: 'the best quality service, at the best price',
        imageUrl: 'assets/images/onBoarding_2.png',
      ),
    ];

    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: IntroScreenOnboarding(
        skipTextStyle: const TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold,fontSize: 20),
        foregroundColor: AppColor.primaryColor,
        introductionList: list,
        onTapSkipButton: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LogInScreen(),
            ), //MaterialPageRoute
          );
        },
        // foregroundColor: Colors.red,
      ),
    );
  }
}
