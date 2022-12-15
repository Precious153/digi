import 'package:digi/core/size_config.dart';
import 'package:digi/home/Customers/view_customers.dart';
import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../../core/reuseable_widgets/buildButton.dart';
import '../../core/reuseable_widgets/buildText.dart';

class CustomersList extends StatefulWidget {
  const CustomersList({Key? key}) : super(key: key);

  @override
  State<CustomersList> createState() => _CustomersListState();
}

class _CustomersListState extends State<CustomersList> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: getProportionateScreenWidth(20),
        right: getProportionateScreenWidth(20)),
        child: SafeArea(
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
              SizedBox(height: getProportionateScreenHeight(24),),
              BuildButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                ViewCustomers()));
              },
                  containerHeight: 66,
                  containerWidth: double.infinity,
                  borderColor: Palette.whiteColor,
                  borderRadiusSize: 10,
                  buttonColor: Palette.whiteColor,
                  buttonChild: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Palette.mainColor,
                        child: Center(
                          child: buildText(text: 'B',
                              fontsize: 14,
                              fontWeight: FontWeight.w400,
                              color: Palette.whiteColor),
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(14),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: getProportionateScreenHeight(8),),
                          buildText(text: 'Brown Lydia',
                          fontsize: 14,
                          fontWeight: FontWeight.w400,
                          color: Palette.textBlackColor),
                          SizedBox(height: getProportionateScreenHeight(8),),
                          buildText(text: '+2348138456786',
                              fontsize: 14,
                              fontWeight: FontWeight.w400,
                              color: Palette.textGreyColor),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
