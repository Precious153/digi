import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../../core/reuseable_widgets/buildButton.dart';
import '../../core/reuseable_widgets/buildText.dart';
import '../../core/reuseable_widgets/buildTextFormField.dart';

class EditCustomers extends StatefulWidget {

  @override
  State<EditCustomers> createState() => _EditCustomersState();
}

class _EditCustomersState extends State<EditCustomers> {
  TextEditingController customerName = TextEditingController();

  TextEditingController customerEmail = TextEditingController();

  TextEditingController customerPhone = TextEditingController();

  TextEditingController customerAddress = TextEditingController();

  TextEditingController customerInfo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(32),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildText(text: 'Edit Customer',
                        fontsize: 20,
                        fontWeight: FontWeight.w500,
                        color: Palette.textBlackColor),
                    Icon(Icons.cancel_outlined,
                      color: Palette.blackColor,),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(49),),
                buildTextFormField(label: 'Customer Name',
                    textEditingController: customerName,
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    validator: Validator().validateCustomerName,
                    isPasswordType: false),
                SizedBox(height: getProportionateScreenHeight(28),),
                buildTextFormField(
                    label: 'Email Address',
                    textEditingController: customerEmail,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    validator: Validator().validateEmail,
                    isPasswordType: false),

                SizedBox(height: getProportionateScreenHeight(28),),
                buildTextFormField(
                    label: 'Phone Number',
                    textEditingController: customerPhone,
                    keyboardType: TextInputType.phone,
                    obscureText: false,
                    validator: Validator().validatePhone,
                    isPasswordType: false),
                SizedBox(height: getProportionateScreenHeight(8),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    buildText(text: 'Select from Contact',
                        fontsize: 12,
                        fontWeight: FontWeight.w400,
                        color: Palette.redColor),
                    SizedBox(height: getProportionateScreenHeight(28),),

                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(28),),
                buildTextFormField(
                    label: 'Address',
                    textEditingController: customerAddress,
                    keyboardType: TextInputType.streetAddress,
                    obscureText: false,
                    validator: Validator().validateAddress,
                    isPasswordType: false),
                SizedBox(height: getProportionateScreenHeight(28),),
                buildTextFormField(
                    label: 'Additional Information',
                    textEditingController: customerInfo,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    validator: Validator().validateInfo,
                    isPasswordType: false),

                SizedBox(height: getProportionateScreenHeight(102),),
                BuildButton(
                  onPressed: () {
                  },
                  containerHeight: 54,
                  containerWidth: double.infinity,
                  borderColor: Palette.mainColor,
                  borderRadiusSize: 20,
                  buttonColor: Palette.mainColor,
                  buttonChild: Center(
                    child: buildText(
                        text: 'Save',
                        fontsize: 14,
                        fontWeight: FontWeight.w600,
                        color: Palette.whiteColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

