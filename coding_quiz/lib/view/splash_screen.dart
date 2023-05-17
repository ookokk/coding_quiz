import 'package:coding_quiz/constants/color.dart';
import 'package:coding_quiz/view/lesson_catalog_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LessonCatalogScreen()),
      );
    });

    return Scaffold(
      backgroundColor: CustomColors.ksplashScreen,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/coding.png',
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              const SizedBox(height: 30),
              ClipOval(
                child: Image.asset(
                  'assets/icons/text.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
