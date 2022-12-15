import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../core/constant.dart';
import '../core/reuseable_widgets/buildButton.dart';
import '../core/reuseable_widgets/buildText.dart';
import 'account_created.dart';
class CreateAccountOtp extends StatefulWidget {
  const CreateAccountOtp({Key? key}) : super(key: key);

  @override
  State<CreateAccountOtp> createState() => _CreateAccountOtpState();
}

class _CreateAccountOtpState extends State<CreateAccountOtp> {

  final GlobalKey<FormState> _emailOtpPinKey = GlobalKey<FormState>();
  String _emailOtpText = "";
  TextEditingController _emailOtpController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(20)),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: getProportionateScreenHeight(32),),
                  buildText(
                      text: 'Verify OTP',
                      fontsize: 20,
                      fontWeight: FontWeight.w500,
                      color: Palette.mainColor),
                  SizedBox(height: getProportionateScreenHeight(16),),
                  buildText(
                      text: 'Enter the six digit code sent to',
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                      color: Palette.textGreyColor),
                  buildText(
                      text: 'adeleyeprecious16@gmail.com',
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                      color: Palette.mainColor),

                  SizedBox(height: getProportionateScreenHeight(24),),
                  buildEmailForm(context),
                  SizedBox(height: getProportionateScreenHeight(32),),
                  Row(
                    children: [
                      buildText(
                          text: 'Expires in ',
                          fontsize: 14,
                          fontWeight: FontWeight.w400,
                          color: Palette.textGreyColor),
                      buildText(
                          text: '00.01',
                          fontsize: 14,
                          fontWeight: FontWeight.w400,
                          color: Palette.mainColor),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(48),),
                  BuildButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context)=>AccountCreated()));
                    },
                    containerHeight: 54,
                    containerWidth: double.infinity,
                    borderColor: Palette.mainColor,
                    borderRadiusSize: 20,
                    buttonColor: Palette.mainColor,
                    buttonChild: Center(
                      child: buildText(
                          text: 'Confirm',
                          fontsize: 14,
                          fontWeight: FontWeight.w600,
                          color: Palette.whiteColor),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(16),),
                  buildText(
                      text: ' Resend OTP',
                      fontsize: 14,
                      fontWeight: FontWeight.w500,
                      color: Palette.textGreyColor),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Form buildEmailForm(BuildContext context) {
    return Form(
                  key: _emailOtpPinKey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(30)),
                    child: PinCodeTextField(
                      autovalidateMode: AutovalidateMode.disabled,
                      autoDisposeControllers: false,
                      enableActiveFill: true,
                      appContext: context,
                      onChanged: (value) async {
                        setState(() {
                          _emailOtpText = value;
                        });
                      },
                      onCompleted: (value) {

                      },
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      pastedTextStyle: TextStyle(
                          fontSize: getProportionateScreenWidth(24),
                          fontWeight: FontWeight.bold,
                      color: Palette.whiteColor),
                      length: 6,
                      animationType: AnimationType.slide,
                      cursorColor: Palette.whiteColor,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        fieldHeight: getProportionateScreenHeight(46),
                        fieldWidth: getProportionateScreenWidth(46),
                        activeFillColor: Palette.mainColor,
                        inactiveColor: Palette.mainColor,
                        activeColor: Palette.mainColor,
                        inactiveFillColor: Palette.mainColor,
                        selectedFillColor: Palette.mainColor,
                        selectedColor: Palette.mainColor,
                      ),
                      validator: (v) {
                        if (v!.length < 6) {
                          return "Enter the 6 digit PIN sent to your mail";
                        } else {
                          return null;
                        }
                      },
                      beforeTextPaste: (text) {
                        return true;
                      },
                      controller: _emailOtpController,
                      animationDuration: const Duration(microseconds: 300),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                );
  }
}
