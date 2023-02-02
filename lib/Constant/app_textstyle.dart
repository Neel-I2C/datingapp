import 'package:flutter/material.dart';
import 'app_color.dart';

class AppTextStyle {
  ///SourceSansPro Regular
  static interRegular({var color, var size}) {
    return TextStyle(
      color: color ?? AppColor.black000,
      fontSize: size ?? 14.0,
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w400,
    );
  }

  ///SourceSansPro medium
  static interSemiBold({var color, var size}) {
    return TextStyle(
      color: color ?? AppColor.black000,
      fontSize: size ?? 14.0,
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w600,
    );
  }

  ///SourceSansPro semiBold
  static interBold({var color, var size}) {
    return TextStyle(
      color: color ?? AppColor.black000,
      fontSize: size ?? 14.0,
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w700,
    );
  }

  ///SourceSansPro semiBold
  static arizoniaRegular({var color, var size}) {
    return TextStyle(
      color: color ?? AppColor.black000,
      fontSize: size ?? 14.0,
      fontFamily: "Arizonia",
      fontWeight: FontWeight.w400,
    );
  }

  ///SourceSansPro under line
  static interUnderLine({var size}) {
    return TextStyle(
      fontSize: size ?? 15,
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w400,
      color: AppColor.appColorFF4,
      decoration: TextDecoration.underline,
      decorationColor: AppColor.appColorFF4,
      decorationThickness: 1,
      decorationStyle: TextDecorationStyle.solid,
    );
  }
}
