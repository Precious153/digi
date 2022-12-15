import 'package:digi/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class buildTextFormField  extends StatelessWidget {
  final String label;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool isPasswordType;
  final Widget? passwordIcon;
  final validator;

  const buildTextFormField({super.key,this.passwordIcon,
    required this.label,
    required this.textEditingController,
    required this.keyboardType,
    required this.obscureText,
    required this.validator,
    required this.isPasswordType});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      child: TextFormField(
        validator: validator,
        keyboardType: keyboardType,
        controller: textEditingController,
        obscureText: obscureText,
        enableSuggestions: !isPasswordType,
        autocorrect: !isPasswordType,
        decoration: InputDecoration(
          suffixIcon: isPasswordType ? passwordIcon : null,
          label: Text(label),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 2,color: Palette.mainColor
            )
          ),
          labelStyle: GoogleFonts.poppins(
            color: Palette.textGreyColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
