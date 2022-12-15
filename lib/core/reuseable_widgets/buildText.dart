import 'package:digi/core/size_config.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';


Text buildText({
  required String text,
  required double fontsize,
  required FontWeight fontWeight,
  required Color color,
  TextAlign?textAlign,
  bool? softWrap,
}){
  return Text(
    text,
    textAlign: textAlign,
    softWrap: softWrap,
    style: GoogleFonts.poppins(
      fontSize: getProportionateScreenHeight(fontsize),
      fontWeight: fontWeight,
      color: color,
    ),

  );
}
