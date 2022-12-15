import 'package:digi/core/constant.dart';
import 'package:digi/core/reuseable_widgets/buildButton.dart';
import 'package:digi/core/reuseable_widgets/buildText.dart';
import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';

import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
        Duration(
          milliseconds: 5000,
        ),
            () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Onboarding()));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildButton(
                  onPressed: (){},
                  containerHeight: 100,
                  containerWidth: 128,
                  borderColor: Palette.mainColor,
                  borderRadiusSize: 10,
                  buttonColor: Palette.mainColor,
                  buttonChild: Center(
                    child: buildText(text: 'D',
                        fontsize: 40,
                        fontWeight: FontWeight.w500,
                        color: Palette.whiteColor
                    ),
                  )),
              SizedBox(height: getProportionateScreenHeight(16),),
              buildText(text: 'Digi Invoice',
                  fontsize: 40,
                  fontWeight: FontWeight.w500,
                  color: Palette.mainColor
              ),
            ],
          ),
        ),
      ),
    );
  }
}
