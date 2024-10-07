import 'package:flutter/material.dart';
import 'package:realfit/common/color_extension.dart';
import 'package:realfit/view/onboarding/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Realfit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ThemeColor.primaryColor1,
        fontFamily: "Poppins",
        useMaterial3: true,
      ),
      home: const OnboardingView(),
    );
  }
}
