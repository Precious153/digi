import 'package:digi/core/constant.dart';
import 'package:digi/core/reuseable_widgets/buildButton.dart';
import 'package:digi/core/reuseable_widgets/buildText.dart';
import 'package:digi/core/size_config.dart';
import 'package:digi/home/Customers/add_customers.dart';
import 'package:flutter/material.dart';

import '../../core/reuseable_widgets/buildTextFormField.dart';
import 'edit_customer.dart';
class Customers extends StatefulWidget {

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.whiteColor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(
              left: getProportionateScreenWidth(20),
          right: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getProportionateScreenHeight(32),),
                buildText(
                    text: 'Customers',
                    fontsize: 20,
                    fontWeight: FontWeight.w500,
                    color:  Palette.textBlackColor),
                SizedBox(height: getProportionateScreenHeight(16),),
                BuildButton(onPressed: (){},
                    containerHeight: 54,
                    containerWidth: double.infinity,
                    borderColor: Palette.whiteColor,
                    borderRadiusSize: 10,
                    buttonColor: Palette.whiteColor,
                    buttonChild: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search for product and services',
                      ),
                    ),

                ),
                SizedBox(height: getProportionateScreenHeight(216),),
                buildText(
                  textAlign: TextAlign.center,
                    text: 'You have`t saved any customer yet.'
                    'Do you want to add a customer?',
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    color:  Palette.textGreyColor),
                SizedBox(height: getProportionateScreenHeight(235),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BuildButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          AddCustomers()));
                    },
                        containerHeight: 45,
                        containerWidth: 174,
                        borderColor: Palette.mainColor,
                        borderRadiusSize: 20,
                        buttonColor: Palette.mainColor,
                        buttonChild: Row(
                          children: [
                            Icon(Icons.add,
                              color: Palette.whiteColor,),
                            SizedBox(width: getProportionateScreenWidth(10),),
                            buildText(
                                text: 'Add Customers',
                                fontsize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.whiteColor),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
