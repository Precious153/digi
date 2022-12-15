import 'package:digi/core/constant.dart';
import 'package:digi/core/reuseable_widgets/buildButton.dart';
import 'package:digi/core/reuseable_widgets/buildText.dart';
import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'get_started.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.whiteColor,
      body: Padding(
        padding:  EdgeInsets.only(
        left: getProportionateScreenWidth(20),
        right: getProportionateScreenWidth(20),),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(98),),
            Expanded(
              child: PageView.builder(
                  itemCount: demo_data.length,
                  controller: _controller,
                  onPageChanged: (index) {
                    selectedIndex = index;
                    setState(() {});
                  },
                itemBuilder: (context, i) {
                  var details = demo_data[i];
                  return buildOnboardContent(
                    image: details.image,
                    title: details.title,
                    subtitle: details.subtitle,
                  );
                },
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 104),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    dotColor:  Palette.pageIndicatorColor,
                    activeDotColor:  Palette.mainColor,
                  dotWidth: 10,
                  dotHeight: 10
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              InkWell(
                onTap: (){
                  _controller.jumpToPage(2);
                },
                child: buildText(text: 'Skip',
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    color: Palette.textGreyColor),
              ),
                selectedIndex == 0 || selectedIndex == 1?
                    BuildButton(onPressed: (){
                      _controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                        containerHeight: 45,
                        containerWidth: 91,
                        borderColor: Palette.mainColor,
                        borderRadiusSize: 20,
                        buttonColor: Palette.mainColor,
                        buttonChild: buildText(text: 'Next',
                            fontsize: 14,
                            fontWeight: FontWeight.w400,
                            color: Palette.whiteColor
                        )
                    ):selectedIndex == 2?
                BuildButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  GetStarted()));
                },
                    containerHeight: 45,
                    containerWidth: 128,
                    borderColor: Palette.mainColor,
                    borderRadiusSize: 20,
                    buttonColor: Palette.mainColor,
                    buttonChild: buildText(text: 'Get Started',
                        fontsize: 14,
                        fontWeight: FontWeight.w400,
                        color: Palette.whiteColor
                    ),
                )
                    : SizedBox.shrink(),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(48),),
          ],
        ),
      ),
    );
  }

  Column buildOnboardContent({
  required String image,
    required String title,
    required String subtitle,
}) {
    return Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(108),),
            Image.asset(image),
            SizedBox(height: getProportionateScreenHeight(32),),
            buildText(text: title,
                fontsize: 24,
                textAlign: TextAlign.center,
                fontWeight:   FontWeight.w600,
                color: Palette.mainColor),
            SizedBox(height: getProportionateScreenHeight(16),),
            buildText(text: subtitle,
                fontsize: 16,
                textAlign: TextAlign.center,
                fontWeight:FontWeight.w400,
                color: Palette.textGreyColor
            ),
          ],
        );
  }
}
class OnBoard {
  final String image, title, subtitle;

  OnBoard(
      {required this.image, required this.title, required this.subtitle});
}

final List<OnBoard> demo_data = [
  OnBoard(
      image: 'images/onboard1.png',
      title: 'Get paid faster',
      subtitle: 'Share bank details and payment links with your customers'),
  OnBoard(
      image: 'images/onboard.png',
      title: 'Share Invoice in Seconds',
      subtitle: 'Easily share invoice with your customer in no time'),
  OnBoard(
      image: 'images/onboard3.png',
      title: 'Generate reciept quickly',
      subtitle: 'Generate quick reciept for your business at any time')
];

