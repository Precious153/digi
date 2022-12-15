import 'package:digi/core/reuseable_widgets/buildButton.dart';
import 'package:digi/core/reuseable_widgets/buildText.dart';
import 'package:digi/core/reuseable_widgets/buildTextFormField.dart';
import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';

import '../core/constant.dart';
import '../login/login.dart';
import 'create_account_verify_otp.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool toggle = true;
  bool toggle1 = true;
  bool _value = false;

  TextEditingController business = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(20)),
          child:SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(32),
                ),
                buildText(
                    text: 'Create an account',
                    fontsize: 20,
                    fontWeight: FontWeight.w500,
                    color: Palette.mainColor),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                buildText(
                    text: 'Kindly fill the following details to get started',
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    color: Palette.textGreyColor),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                buildTextFormField(
                    label: 'Business Name',
                    textEditingController: business,
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    validator: Validator().validateBusinessName,
                    isPasswordType: false),
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
                    label: 'Phone Number',
                    textEditingController: phone,
                    keyboardType: TextInputType.phone,
                    obscureText: false,
                    validator: Validator().validatePhone,
                    isPasswordType: false),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                buildTextFormField(
                  label: 'Create Password',
                  textEditingController: password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: toggle ,
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
                buildTextFormField(
                  label: 'Re-enter Password',
                  textEditingController: confirmPassword,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: toggle1,
                  validator: Validator().validateBusinessName,
                  isPasswordType: true,
                  passwordIcon: GestureDetector(
                      onTap: () {
                        if (toggle1 == true) {
                          setState(() {
                            toggle1 = false;
                          });
                        } else {
                          setState(() {
                            toggle1 = true;
                          });
                        }
                      },
                      child: toggle1 == true
                          ? Icon(
                        Icons.visibility_off_outlined,
                      )
                          : Icon(
                        Icons.visibility,
                      )),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(28),
                ),
                Row(
                  children: [
                    Checkbox(
                        value: _value,
                        activeColor: Palette.mainColor,
                        onChanged: (value) {
                          setState(() {
                            // This clicks the checkbox
                            this._value = value!;
                            // This statement sets is validated to true as soon as the checkbox is clicked and
                            // the text form fields have been validated.
                          });
                        }),
                    buildText(
                        text: 'I accept the Term of Use & Privacy Policy',
                        fontsize: 14,
                        fontWeight: FontWeight.w400,
                        color: Palette.textGreyColor),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(53),
                ),
                BuildButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccountOtp()));
                  },
                  containerHeight: 54,
                  containerWidth: double.infinity,
                  borderColor: Palette.mainColor,
                  borderRadiusSize: 20,
                  buttonColor: Palette.mainColor,
                  buttonChild: Center(
                    child: buildText(
                        text: 'Continue',
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
                        text: 'Already have an account?',
                        fontsize: 14,
                        fontWeight: FontWeight.w400,
                        color: Palette.textGreyColor),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                      },
                      child: buildText(
                          text: 'Log In',
                          fontsize: 14,
                          fontWeight: FontWeight.w400,
                          color: Palette.mainColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
