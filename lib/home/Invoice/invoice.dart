import 'package:digi/core/constant.dart';
import 'package:digi/core/reuseable_widgets/buildButton.dart';
import 'package:digi/core/reuseable_widgets/buildText.dart';
import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';

import 'invoiceBottomSheet.dart';

class Invoice extends StatefulWidget {
  Invoice({this.onSeeAllTap, this.onNewCardTap});

  VoidCallback? onSeeAllTap, onNewCardTap;

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: getProportionateScreenWidth(20,),
          right: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getProportionateScreenHeight(33),),
       Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               buildText(text: 'Invoice',
                   fontsize: 20,
                   fontWeight: FontWeight.w500,
                   color: Palette.textBlackColor),
               Icon(Icons.menu,
                 color: Palette.blackColor,),
             ],
       ),
                SizedBox(height: getProportionateScreenHeight(17),),
                buildText(text: 'Invoice Date and Number',
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    color: Palette.textBlackColor),
                SizedBox(height: getProportionateScreenHeight(8),),
                BuildButton(
                  containerHeight: getProportionateScreenHeight(104),
                  containerWidth: double.infinity,
                onPressed: (){},
                  borderColor: Palette.whiteColor,
                  borderRadiusSize: 10,
                  buttonColor: Palette.whiteColor,
                buttonChild: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top:getProportionateScreenHeight(10),),
                        child: Column(
                          children: [
                            buildInvoiceDataRow(invoiceNo: 'Invoice No', invoiceId: 'INV0001'),
                            SizedBox(height: getProportionateScreenHeight(13),),
                            buildInvoiceDataRow(invoiceNo: 'Invoice Date', invoiceId: '7 Nov, 2022'),
                            SizedBox(height: getProportionateScreenHeight(13),),

                            buildInvoiceDataRow(invoiceNo: 'Payment Due', invoiceId: '14  Nov, 2022'),
                          ],
                        ),

                      )
                    ],
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(16),),
                buildText(text: 'Business Details',
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    color: Palette.textBlackColor),
                SizedBox(height: getProportionateScreenHeight(8),),
                BuildButton(onPressed: (){},
                    containerHeight: 45,
                    containerWidth: double.infinity,
                    borderColor: Palette.whiteColor,
                    borderRadiusSize: 10,
                    buttonColor: Palette.whiteColor,
                    buttonChild:Row(
                      children: [
                        buildText(
                            text: 'Digi Invoice',
                            fontsize: 14,
                            fontWeight: FontWeight.w400,
                            color: Palette.textGreyColor),
                      ],
                    ),),
                SizedBox(height: getProportionateScreenHeight(15),),
                buildText(text: 'Customer',
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    color: Palette.textBlackColor),
                SizedBox(height: getProportionateScreenHeight(8),),
                BuildButton(onPressed: (){},
                  containerHeight: 45,
                  containerWidth: double.infinity,
                  borderColor: Palette.whiteColor,
                  borderRadiusSize: 10,
                  buttonColor: Palette.whiteColor,
                  buttonChild:Row(
                    children: [
                      buildText(
                          text: 'Add Customer Information',
                          fontsize: 14,
                          fontWeight: FontWeight.w400,
                          color: Palette.textGreyColor),
                    ],
                  ),),
                SizedBox(height: getProportionateScreenHeight(15),),
                buildText(text: 'Inventory',
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    color: Palette.textBlackColor),
                SizedBox(height: getProportionateScreenHeight(8),),
                BuildButton(onPressed: (){},
                  containerHeight: 45,
                  containerWidth: double.infinity,
                  borderColor: Palette.whiteColor,
                  borderRadiusSize: 10,
                  buttonColor: Palette.whiteColor,
                  buttonChild:Row(
                    children: [
                      buildText(
                          text: 'No inventory added yet',
                          fontsize: 14,
                          fontWeight: FontWeight.w400,
                          color: Palette.textGreyColor),
                    ],
                  ),),
                SizedBox(height: getProportionateScreenHeight(8),),

                Center(
                  child: BuildButton(onPressed: (){},
                      containerHeight: 37,
                      containerWidth: 155,
                      borderColor: Palette.mainColor,
                      borderRadiusSize: 20,
                      buttonColor: Palette.mainColor,
                      buttonChild: Row(
                        children: [
                          Icon(Icons.add,
                          color: Palette.whiteColor,),
                          buildText(
                              text: 'Add inventory',
                              fontsize: 14,
                              fontWeight: FontWeight.w400,
                              color: Palette.whiteColor),
                        ],
                      )),

                ),
                SizedBox(height: getProportionateScreenHeight(16),),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(111),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Palette.whiteColor,
                        ),
                        child:  Padding(
                          padding:  EdgeInsets.only(left: getProportionateScreenWidth(10),
                              right: getProportionateScreenWidth(10)),
                          child: Column(
                            children: [
                              SizedBox(height: getProportionateScreenHeight(8),),
                              buildTotalRow(amountPurpose: 'Subtotal', amount: '#0:00'),
                              SizedBox(height: getProportionateScreenHeight(8),),
                              buildTotalRow(amountPurpose: 'Discount (%)', amount: '-#0:00'),
                              SizedBox(height: getProportionateScreenHeight(8),),
                              buildTotalRow(amountPurpose: 'Tax (%)', amount: '#0:00'),
                              SizedBox(height: getProportionateScreenHeight(8),),
                              buildTotalRow(amountPurpose: 'Shipping Fee', amount: '#0:00'),
                              SizedBox(height: getProportionateScreenHeight(5),),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getProportionateScreenHeight(31),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Palette.mainColor.withOpacity(0.3),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(left: getProportionateScreenWidth(10),
                              right: getProportionateScreenWidth(10),top: getProportionateScreenHeight(5)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  buildText(text: 'Total',
                                      fontsize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Palette.textBlackColor),
                                  buildText(text: '#0.00',
                                      fontsize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Palette.textBlackColor),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(16),),
                BuildButton(onPressed: (){},
                  containerHeight: 45,
                  containerWidth: double.infinity,
                  borderColor: Palette.whiteColor,
                  borderRadiusSize: 10,
                  buttonColor: Palette.whiteColor,
                  buttonChild:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildText(
                          text: 'Choose a payment method',
                          fontsize: 14,
                          fontWeight: FontWeight.w400,
                          color: Palette.textBlackColor),
                      Icon(Icons.arrow_forward_ios,
                      color: Palette.textGreyColor,
                      size: 10,)
                    ],
                  ),),
                SizedBox(height: getProportionateScreenHeight(16),),
                buildText(text: 'Additional Comment',
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    color: Palette.textBlackColor),
                SizedBox(height: getProportionateScreenHeight(8),),
                BuildButton(onPressed: (){},
                  containerHeight: 65,
                  containerWidth: double.infinity,
                  borderColor: Palette.whiteColor,
                  borderRadiusSize: 10,
                  buttonColor: Palette.whiteColor,
                  buttonChild:Row(
                    children: [
                      buildText(
                        textAlign: TextAlign.start,
                          text: 'Write your customer a thank you message,a\n comment or an important information',
                          fontsize: 14,
                          fontWeight: FontWeight.w400,
                          color: Palette.textGreyColor),
                    ],
                  ),),
                SizedBox(height: getProportionateScreenHeight(32),),
                BuildButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        isDismissible: true,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(0))),
                        context: context,
                        builder: (context) => InvoiceBottomSheet());
                  },
                  containerHeight: 54,
                  containerWidth: double.infinity,
                  borderColor: Palette.mainColor,
                  borderRadiusSize: 15,
                  buttonColor: Palette.mainColor,
                  buttonChild: Center(
                    child: buildText(
                        text: 'Generate Invoice',
                        fontsize: 14,
                        fontWeight: FontWeight.w600,
                        color: Palette.whiteColor),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(24),),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildInvoiceDataRow({
  required String invoiceNo,
  required String invoiceId,
}) {
    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildText(text: invoiceNo,
                            fontsize: 12,
                            fontWeight: FontWeight.w400,
                            color: Palette.textGreyColor),
                        Row(
                          children: [
                            buildText(text: invoiceId,
                                fontsize: 12,
                                fontWeight: FontWeight.w400,
                                color: Palette.textBlackColor),
                            SizedBox(width: getProportionateScreenWidth(17),),
                            Icon(Icons.arrow_forward_ios_rounded,
                              size: 10,
                              color: Palette.blackColor,),
                          ],
                        ),
                      ],
                    );
  }
  Row buildTotalRow({
    required String amountPurpose,
    required String amount,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildText(text: amountPurpose,
            fontsize: 12,
            fontWeight: FontWeight.w400,
            color: Palette.textGreyColor),
        buildText(text: amount,
            fontsize: 12,
            fontWeight: FontWeight.w400,
            color: Palette.textGreyColor),
      ],
    );
  }

}
