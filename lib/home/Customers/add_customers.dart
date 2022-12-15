import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../core/constant.dart';
import '../../core/reuseable_widgets/buildButton.dart';
import '../../core/reuseable_widgets/buildText.dart';
import '../../core/reuseable_widgets/buildTextFormField.dart';
import 'customers_list.dart';

class AddCustomers extends StatefulWidget {

  @override
  State<AddCustomers> createState() => _AddCustomersState();
}

class _AddCustomersState extends State<AddCustomers> {
   TextEditingController customername = TextEditingController();

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
                    buildText(text: 'New Customer',
                        fontsize: 20,
                        fontWeight: FontWeight.w500,
                        color: Palette.textBlackColor),
                    Icon(Icons.cancel_outlined,
                      color: Palette.blackColor,),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(49),),
               buildTextFormField(label: 'Customer Name',
                   textEditingController: customername,
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
                    showModalBottomSheet(context: context,
                        builder:(context)=>Container(
                      height: getProportionateScreenHeight(271),
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(height: getProportionateScreenHeight(54),),
                          buildText(text: 'Are you sure you want to\nleave this page',
                              fontsize: 20,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w500,
                              color: Palette.textBlackColor),
                          SizedBox(height: getProportionateScreenHeight(24),),
                          BuildButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                  CustomersList()));
                            },
                            containerHeight: 45,
                            containerWidth: 128,
                            borderColor: Palette.mainColor,
                            borderRadiusSize: 20,
                            buttonColor: Palette.mainColor,
                            buttonChild:   buildText(text: 'Yes, leave',
                                fontsize: 14,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w400,
                                color: Palette.whiteColor),
                          ),
                          SizedBox(height: getProportionateScreenHeight(16),),
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: buildText(text: 'Continue',
                                fontsize: 14,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w400,
                                color: Palette.textGreyColor),
                          ),
                        ],
                      ),
                    ),
                    );
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

