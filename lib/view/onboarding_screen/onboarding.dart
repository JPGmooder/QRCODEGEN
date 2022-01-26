import 'package:flutter/material.dart';
import 'package:trionproj/consts/colors.dart';
import 'package:trionproj/consts/strings.dart';
import 'package:trionproj/models/textstyles.dart';
import 'package:trionproj/view/onboarding_screen/switcher.dart';
import 'package:trionproj/view/standalone_widgets/onBoardingButton.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => Stack(children: [
                  Image.asset(onBoardBackground),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SwitcherWidget(
                        itemsList: onBoardingSwitcherList
                            .map((e) => Image.asset(e))
                            .toList(),
                        dotWidth: 10,
                        sizeBetween: constraints.maxHeight * 0.08,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: constraints.maxWidth * 0.13),
                        child: Column(
                          children: [
                            Text(
                              onBoardingWelcomeMessage,
                              style: customTextStyles.Titile1(
                                  constraints.maxWidth, mainColor),
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.03,
                            ),
                            Text(
                              onBoardingWelcomeMessageSub,
                              style: customTextStyles.Titile1(
                                  constraints.maxWidth * 0.5,
                                  mainColor.withAlpha(100)),
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: constraints.maxWidth * 0.85,
                        height: 50,
                        child: onBoardingMainButton(
                          onPress: () => Navigator.of(context)
                              .pushReplacementNamed(authorizationScreenRoute),
                          child: Stack(
                            children: const [
                              Center(
                                child: Text(onBoardingWelcomeStart),
                              ),
                              Align(
                                child: Icon(Icons.arrow_right_alt),
                                alignment: Alignment.centerRight,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ]),
        ),
      ),
    );
  }
}
