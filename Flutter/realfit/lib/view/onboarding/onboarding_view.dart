import 'package:flutter/material.dart';
import 'package:realfit/common/color_extension.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ThemeColor.white,
      body: Stack(
        children: [
          PageView.builder(
              controller: controller,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: media.width,
                  height: media.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/img/onboard1.png",
                        width: media.width,
                        fit: BoxFit.fitWidth,
                      ),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Track Your Style",
                            style: TextStyle(
                                color: ThemeColor.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w700)
                                ),
                      ),
                    ],

                  ),
                );
              })
        ],
      ),
    );
  }
}
