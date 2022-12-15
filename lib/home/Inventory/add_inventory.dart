import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../../core/reuseable_widgets/buildText.dart';

class AddInventory extends StatefulWidget {
  const AddInventory({Key? key}) : super(key: key);

  @override
  State<AddInventory> createState() => _AddInventoryState();
}

class _AddInventoryState extends State<AddInventory> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: getProportionateScreenWidth(20),
        right: getProportionateScreenWidth(20)),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(32),),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                  ),
                  buildText(
                      text: 'Add Inventory',
                      fontsize: 20,
                      fontWeight: FontWeight.w500,
                      color: Palette.textBlackColor),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(22),),

            ],
          ),
        ),
      ),
    );
  }
}
