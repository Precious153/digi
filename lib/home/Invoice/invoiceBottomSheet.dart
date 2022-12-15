import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../../core/reuseable_widgets/buildButton.dart';
import '../../core/reuseable_widgets/buildText.dart';

class InvoiceBottomSheet extends StatelessWidget {
  const InvoiceBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(24),
          vertical: getProportionateScreenHeight(20),

      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildText(text: 'Invoice Number',
                  fontsize: 20,
                  fontWeight: FontWeight.w500,
                  color: Palette.textBlackColor),
              Icon(Icons.cancel_outlined,
                color: Palette.blackColor,),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(17),),
          BuildButton(onPressed: (){},
            containerHeight: 80,
            containerWidth: double.infinity,
            borderColor: Palette.whiteColor,
            borderRadiusSize: 10,
            buttonColor: Palette.whiteColor,
            buttonChild:Row(
              children: [
                Column(
                  children: [
                    SizedBox(height: getProportionateScreenHeight(13),),
                    buildText(
                        text: 'Invoice Number',
                        fontsize: 14,
                        fontWeight: FontWeight.w400,
                        color: Palette.textGreyColor),
                    SizedBox(height: getProportionateScreenHeight(8),),
                    buildText(
                        text: '00001',
                        fontsize: 16,
                        fontWeight: FontWeight.w400,
                        color: Palette.textBlackColor),
                  ],
                ),
              ],
            ),),
          SizedBox(height: getProportionateScreenHeight(32),),
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
    );
  }
}
