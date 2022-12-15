import 'package:digi/core/reuseable_widgets/buildButton.dart';
import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../../core/reuseable_widgets/buildText.dart';
import 'edit_customer.dart';

class ViewCustomers extends StatefulWidget {
  const ViewCustomers({Key? key}) : super(key: key);

  @override
  State<ViewCustomers> createState() => _ViewCustomersState();
}

class _ViewCustomersState extends State<ViewCustomers> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: getProportionateScreenWidth(20),
          right: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(32),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: (){
                            Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back,
                        color: Palette.textBlackColor,
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(10),),
                      buildText(text: 'Brown Lydia',
                          fontsize: 20,
                          fontWeight: FontWeight.w500,
                          color: Palette.textBlackColor),
                    ],
                  ),
                  Row(
                    children: [
                        GestureDetector(
                          onTap: (){
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) =>
                                  Padding(
                                    padding:  EdgeInsets.only(top: getProportionateScreenHeight(300),
                                        bottom: getProportionateScreenHeight(79)),
                                    child:AlertDialog(
                                      title:   buildText(text: 'Are you sure you want to \ndelete this customer?',
                                          fontsize: 20,
                                          textAlign: TextAlign.center,
                                          fontWeight: FontWeight.w500,
                                          color: Palette.textBlackColor),
                                      content: buildText(text: 'You will not be able to recover this\ndetails afterwards',
                                          fontsize: 14,
                                          textAlign: TextAlign.center,
                                          fontWeight: FontWeight.w400,
                                          color: Palette.textGreyColor),
                                      actionsAlignment: MainAxisAlignment.center,

                                      actions: <Widget>[
                                        Column(
                                          children: [
                                            BuildButton(onPressed: (){

                                            },
                                              containerHeight: 45,
                                              containerWidth: 128,
                                              borderColor: Palette.mainColor,
                                              borderRadiusSize: 20,
                                              buttonColor: Palette.mainColor,
                                              buttonChild:   buildText(text: 'Yes, delete',
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

                                      ],

                                    ),
                                  ),
                            );
                          },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Palette.mainColor.withOpacity(0.5),
                          child: Center(
                            child: Icon(
                              Icons.delete_outline_outlined,
                              color: Palette.whiteColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(16),),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          EditCustomers()));
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Palette.mainColor.withOpacity(0.5),
                          child: Center(
                              child: Icon(
                                Icons.edit,
                                color: Palette.whiteColor,
                              )
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(30),),
              buildViewCustomers(height: 66, title: 'Customer Name', subTitle: 'Brown Lydia'),
              SizedBox(height: getProportionateScreenHeight(16),),
              buildViewCustomers(height: 66, title: 'Email Address', subTitle: 'brownlydia@gmail.com'),
              SizedBox(height: getProportionateScreenHeight(16),),
              buildViewCustomers(height: 66, title: 'Phone Number', subTitle: '+2348134567890'),
              SizedBox(height: getProportionateScreenHeight(16),),
              buildViewCustomers(height: 85, title: 'Address', subTitle: 'Apartment 88, Florence House,  Oconnel`s\n'
                  'Road, Maitama, Abuja'),
              SizedBox(height: getProportionateScreenHeight(16),),
              buildViewCustomers(height: 66, title: 'Additional Information', subTitle: 'Your additional information goes here'),
              SizedBox(height: getProportionateScreenHeight(120),),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BuildButton(onPressed: (){

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
                          SizedBox(height: getProportionateScreenWidth(10),),
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
    );
  }

  BuildButton buildViewCustomers({
  required double height,
    required String title,
    required String subTitle,
}) {
    return BuildButton(
                onPressed: (){},
                containerHeight: height,
                containerWidth: double.infinity,
                borderColor: Palette.whiteColor,
                borderRadiusSize: 10,
                buttonColor: Palette.whiteColor,
                buttonChild: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: getProportionateScreenHeight(8),),
                        buildText(text: title,
                            fontsize: 14,
                            fontWeight: FontWeight.w400,
                            color: Palette.textGreyColor),
                        SizedBox(height: getProportionateScreenHeight(8),),
                        buildText(text: subTitle,
                            fontsize: 14,
                            fontWeight: FontWeight.w400,
                            color: Palette.textBlackColor),
                      ],
                    ),
                  ],
                )
            );
  }
}
