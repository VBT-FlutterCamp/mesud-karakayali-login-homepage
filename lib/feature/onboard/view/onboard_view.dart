import 'package:flutter/material.dart';

import 'package:kartal/kartal.dart';
import 'package:vbt_sample_project/core/constants/colors/onboard_color.dart';
import 'package:vbt_sample_project/core/constants/strings/button_strings.dart';
import 'package:vbt_sample_project/feature/login/view/login_view.dart';
import 'package:vbt_sample_project/feature/onboard/model/onboard_model.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);
  static const routeName = '/onBoardView';
  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  int currentIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.blue,
        child: PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          itemCount: onboardModels.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  // color: Colors.blue,
                  height: context.height * 0.48,
                  width: context.width,
                  child: Image.asset(onboardModels[index].image,
                      fit: BoxFit.fitWidth),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  width: context.width * 1,
                    height: context.height * 0.52,
                    decoration: BoxDecoration(
                    
                      color: Colors.blue.withOpacity(0.3),
                      borderRadius: BorderRadius.only(
                        topLeft: context.normalRadius * 2,
                        topRight: context.normalRadius * 2,
                      ),
                    ),

                  child: Container(
                    width: context.width * 1,
                    height: context.height * 0.50,
                    decoration: BoxDecoration(
                    
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: context.normalRadius * 2,
                        topRight: context.normalRadius * 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        
                        Container(
                          height: context.height*0.32,
                          child: Column(
                            children: [
                              _builddotOfPage(index, context),
                                _buildTextColumn(index, context),
                            ],
                          ),
                        ),
                      
                        Padding(
                          padding: context.verticalPaddingMedium,
                          child: _buildElevatedButtons(context, index),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Row _buildElevatedButtons(BuildContext context, int index) {
    var onboardColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: context.horizontalPaddingNormal,
          child: ElevatedButton(
            onPressed: () {
              
            },
            child: const Text(ButtonStrings.skipButton),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(context.width * 0.3, context.height * 0.05),
              primary: OnboardColor.onBoardButtonSkipBG,
              elevation: 0,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (index == onboardModels.length - 1) {
              Navigator.pushNamedAndRemoveUntil(context, LoginViewPage.routeName, (route) => false);
            } else {
              _pageController?.nextPage(
                duration: context.durationLow,
                curve: Curves.easeIn,
              );
            }
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(context.width * 0.3, context.height * 0.05),
            elevation: 0,
            primary: OnboardColor.buttonColor,
          ),
          child: const Text(ButtonStrings.nextButton),
        ),
      ],
    );
  }

  Widget _buildTextColumn(int index, BuildContext context) {
    return Column(
      children: [
        Text(onboardModels[index].title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: context.dynamicWidth(0.06),
              fontWeight: FontWeight.w600,
            )),
        Padding(
          padding: context.paddingMedium,
          child: Text(
            onboardModels[index].description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: context.dynamicWidth(0.04),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  Widget _builddotOfPage(int index, BuildContext context) {
    return Padding(
      padding: context.verticalPaddingMedium,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3,
          (indexDots) {
            return Padding(
              padding: context.paddingLow,
              child: Container(
                width: index==indexDots?11:8,
                height: index==indexDots?11:8,
                decoration: BoxDecoration(
                  color: index == indexDots
                      ? Colors.blue
                      : Colors.blueGrey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(context.width * 0.05),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
