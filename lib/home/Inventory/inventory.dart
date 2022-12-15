import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../../core/reuseable_widgets/buildButton.dart';
import '../../core/reuseable_widgets/buildText.dart';
import 'add_inventory.dart';

class Inventory extends StatefulWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: getProportionateScreenHeight(32),),
                Row(
                  children: [
                    buildText(
                        text: 'Inventory',
                        fontsize: 20,
                        fontWeight: FontWeight.w500,
                        color:  Palette.textBlackColor),
                  ],
                ),
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
                    text: 'You have`t saved any inventory yet.\n'
                    'Do you want to add a product or service?',
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    color:  Palette.textGreyColor),
                SizedBox(height: getProportionateScreenHeight(235),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BuildButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          AddInventory()));
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
                            SizedBox(width: getProportionateScreenWidth(15),),
                            buildText(
                                text: 'Add Inventory',
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
