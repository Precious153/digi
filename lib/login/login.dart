import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';

import '../core/constant.dart';
import '../core/reuseable_widgets/buildButton.dart';
import '../core/reuseable_widgets/buildText.dart';
import '../core/reuseable_widgets/buildTextFormField.dart';
import '../home/nav.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool toggle = true;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: getProportionateScreenWidth(20),
          right: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(32),
                  ),
                  buildText(
                      text: 'Welcome back!',
                      fontsize: 20,
                      fontWeight: FontWeight.w500,
                      color: Palette.mainColor),
                  SizedBox(
                    height: getProportionateScreenHeight(16),
                  ),
                  buildText(
                      text: 'Log into your account with the details below',
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                      color: Palette.textGreyColor),
                  SizedBox(
                    height: getProportionateScreenHeight(16),
                  ),
                  buildTextFormField(
                      label: 'Email',
                      textEditingController: email,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      validator: Validator().validateEmail,
                      isPasswordType: false),
                  SizedBox(
                    height: getProportionateScreenHeight(16),
                  ),
                  buildTextFormField(
                    label: ' Password',
                    textEditingController: password,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: toggle,
                    validator: Validator().validatePassword,
                    isPasswordType: true,
                    passwordIcon: GestureDetector(
                        onTap: () {
                          if (toggle == true) {
                            setState(() {
                              toggle = false;
                            });
                          } else {
                            setState(() {
                              toggle = true;
                            });
                          }
                        },
                        child: toggle == true
                            ? Icon(
                          Icons.visibility_off_outlined,
                        )
                            : Icon(
                          Icons.visibility,
                        )),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      buildText(
                          text: 'Forgot Password',
                          fontsize: 14,
                          fontWeight: FontWeight.w500,
                          color: Palette.textGreyColor),
                      ]
                  ),
                      SizedBox(
                        height: getProportionateScreenHeight(53),
                      ),
                      BuildButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>Nav()));
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
                      SizedBox(
                        height: getProportionateScreenHeight(16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildText(
                              text: 'Don`t have an account?',
                              fontsize: 14,
                              fontWeight: FontWeight.w400,
                              color: Palette.textGreyColor),
                          buildText(
                              text: 'Sign Up',
                              fontsize: 14,
                              fontWeight: FontWeight.w400,
                              color: Palette.mainColor),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
