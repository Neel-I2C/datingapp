import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:flutter/material.dart';

import '../../../../Constant/app_color.dart';

commonRow({var color, var title, var subTitle}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: AppTextStyle.interRegular(
          size: 16.0,
          color: AppColor.grey697,
        ),
      ),
      color == null
          ? Text(
              subTitle,
              style: AppTextStyle.interRegular(
                size: 18.0,
                color: AppColor.black091,
              ),
            )
          : Text(
              "\$10",
              style: AppTextStyle.interSemiBold(
                size: 20.0,
                color: color,
              ),
            ),
    ],
  );
}
