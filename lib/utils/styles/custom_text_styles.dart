
import 'package:feature_first/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomTextStyles {

  static TextStyle primary = GoogleFonts.figtree(
      fontSize: 7.sp,
      color: ColorPalates.secondary,
      fontWeight: FontWeight.w400
  );

  static TextStyle titleTextStyles = GoogleFonts.figtree(
      fontSize: 8.sp,
      color: ColorPalates.defaultWhite,
      fontWeight: FontWeight.bold
  );


  static TextStyle descriptionTextStyles = GoogleFonts.figtree(
      fontSize: 6.sp,
      color: ColorPalates.secondary,
      fontWeight : FontWeight.normal
  );


  static TextStyle buttonTextStyles = GoogleFonts.figtree(
      fontSize: 6.sp,
      color: ColorPalates.defaultWhite,
      fontWeight: FontWeight.bold
  );

}