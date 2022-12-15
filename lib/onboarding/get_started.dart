import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';

import '../core/constant.dart';
import '../core/reuseable_widgets/buildButton.dart';
import '../core/reuseable_widgets/buildText.dart';
import '../create_account/create_account.dart';
import '../login/login.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.whiteColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.only(
              left: getProportionateScreenWidth(30),
              right: getProportionateScreenWidth(30)
            ),
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(140),),
                Image.asset('images/onboard2.png'),
                SizedBox(height: getProportionateScreenHeight(32),),
                buildText(text: 'Digi Invoice',
                    fontsize: 40,
                    textAlign: TextAlign.center,
                    fontWeight:   FontWeight.w500,
                    color: Palette.mainColor),
                SizedBox(height: getProportionateScreenHeight(8),),

                buildText(text: 'Manage your business more easily',
                    fontsize: 16,
                    textAlign: TextAlign.center,
                    fontWeight:   FontWeight.w400,
                    color: Palette.textGreyColor),
                SizedBox(height: getProportionateScreenHeight(64),),
                BuildButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        CreateAccount()));
                },
                  containerHeight: 54,
                  containerWidth: double.infinity,
                  borderColor: Palette.mainColor,
                  borderRadiusSize: 20,
                  buttonColor: Palette.mainColor,
                  buttonChild: buildText(text: 'Sign Up',
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                      color: Palette.whiteColor
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(8),),
                BuildButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    Login()));
                  },
                  containerHeight: 54,
                  containerWidth: double.infinity,
                  borderColor: Palette.mainColor,
                  borderRadiusSize: 20,
                  buttonColor: Palette.whiteColor,
                  buttonChild: buildText(text: 'Log In',
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                      color: Palette.mainColor
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
