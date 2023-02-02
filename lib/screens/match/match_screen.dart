import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constant/app_color.dart';
import '../../Constant/app_image.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 53,
          ),
          Image(
            image: AssetImage(
              AppImage.match,
            ),
            height: 400,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  "It’s a match, John!",
                  style: AppTextStyle.interBold(
                    color: AppColor.appColorFF5,
                    size: 34.0,
                  ),
                ),
                Text(
                  "Start a conversation now with each other",
                  style: AppTextStyle.interRegular(
                    color: AppColor.grey697,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 73,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CommonButton(
              onTap: () {
                // Get.to(() => MatchScreen());
              },
              width: Get.width,
              title: "Say hello",
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 55,
              width: Get.width,
              margin: EdgeInsets.only(right: 24, left: 24, top: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.0),
                color: AppColor.appColorFF5.withOpacity(0.1),
              ),
              child: Text(
                "Keep swiping",
                style: AppTextStyle.interRegular(
                  size: 16.0,
                  color: AppColor.appColorFF5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
