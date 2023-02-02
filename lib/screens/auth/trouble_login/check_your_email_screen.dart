import 'package:datingapp/screens/auth/email_login/email_login.dart';
import 'package:datingapp/screens/auth/login_with_phone/my_mobile_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constant/app_color.dart';
import '../../../Constant/app_textstyle.dart';

class CheckYourEmailScreen extends StatelessWidget {
  const CheckYourEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Column(
        children: [
          AppBarDesign(),
          Text(
            "Check your email!",
            style: AppTextStyle.interBold(
              size: 28.0,
            ),
          ),
          SizedBox(
            height: 22.0,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "if we found an account with\n",
                  style: AppTextStyle.interRegular(
                    color: AppColor.grey697,
                    size: 18.0,
                  ),
                ),
                TextSpan(
                  text: "Johndoe123@gmail.com\n",
                  style: AppTextStyle.interSemiBold(
                    color: AppColor.grey697,
                    size: 18.0,
                  ),
                ),
                TextSpan(
                  text:
                      "an email has been sent. Please\ncheck your email in a moment.",
                  style: AppTextStyle.interRegular(
                    color: AppColor.grey697,
                    size: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "Didn't receive a link?",
            style: AppTextStyle.interBold(
              color: AppColor.grey697,
              size: 22.0,
            ),
          ),
          SizedBox(
            height: 28.0,
          ),
          CommonButton(
            onTap: () {
              Get.to(() => EmailLogin());
            },
            title: "Use A Different Email",
          ),
          SizedBox(
            height: 22.0,
          ),
          CommonButton(
            onTap: () {
              Get.to(() => MyMobileScreen());
            },
            title: "Use Your Phone Number",
          ),
          SizedBox(
            height: 122.0,
          ),
        ],
      ),
    );
  }
}
