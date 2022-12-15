import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
   BuildButton({
     required this.onPressed,
     required this.containerHeight,
     required this.containerWidth,
     required this.borderColor,
     required this.borderRadiusSize,
     required this.buttonColor,
     required this.buttonChild,
});
   void Function()? onPressed;
   Widget buttonChild;
   double containerHeight;
   double containerWidth;
   double borderRadiusSize;
   Color borderColor;
   Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(containerHeight),
      width: getProportionateScreenWidth(containerWidth),
      child: ElevatedButton(onPressed: onPressed,
          child: buttonChild,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusSize),
            side: BorderSide(color: borderColor),
          )
        ),
      ),
    );
  }
}
