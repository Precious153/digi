import 'package:digi/core/reuseable_widgets/buildButton.dart';
import 'package:digi/login/login.dart';
import 'package:flutter/material.dart';

import '../core/constant.dart';
import '../core/reuseable_widgets/buildText.dart';
import '../core/size_config.dart';

class AccountCreated extends StatefulWidget {
  const AccountCreated({Key? key}) : super(key: key);

  @override
  State<AccountCreated> createState() => _AccountCreatedState();
}

class _AccountCreatedState extends State<AccountCreated> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.whiteColor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(
              left:getProportionateScreenWidth(37),
          right: getProportionateScreenWidth(37),),
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(108),),
              Image.asset('images/registration.png'),
              SizedBox(height: getProportionateScreenHeight(32),),
              buildText(
                  text: 'Registration Completed',
                  fontsize: 24,
                  fontWeight: FontWeight.w500,
                  color: Palette.mainColor),
              SizedBox(height: getProportionateScreenHeight(8),),
              buildText(
                textAlign: TextAlign.center,
                  text: 'Your account was successfully created. It`s time to take your business to the next level with Digi Invoice',
                  fontsize: 14,
                  fontWeight: FontWeight.w400,
                  color: Palette.textGreyColor),
              SizedBox(height: getProportionateScreenHeight(40),),
              BuildButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>Login()));
              },
                  containerHeight: 45,
                  containerWidth: 128,
                  borderColor: Palette.mainColor,
                  borderRadiusSize: 20,
                  buttonColor: Palette.mainColor,
                  buttonChild: Center(
                    child: buildText(
                        text: 'Done',
                        fontsize: 14,
                        fontWeight: FontWeight.w500,
                        color: Palette.whiteColor),
                  ),)
            ],
          ),
        ),
      ),
    );
  }
}
