import 'package:datingapp/constants/color.dart';
import 'package:datingapp/constants/image.dart';
import 'package:datingapp/constants/textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/profile_detail_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhatsYourEmailScreen extends StatelessWidget {
  const WhatsYourEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: Column(
        children: [
          AppBarDesign(),
          Text(
            "What’s your email?",
            style: TextStyleClass.interBold(
              size: 28.0,
            ),
          ),
          SizedBox(
            height: 11,
          ),
          Text(
            '''Don’t  lose access to your account,
verify your email.''',
            textAlign: TextAlign.center,
            style: TextStyleClass.interRegular(
              size: 16.0,
            ),
          ),
          SizedBox(
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextFromFieldCommon(hintText: "Enter Email"),
          ),
          SizedBox(
            height: 240,
          ),
          CommonButton(
            onTap: () {
              Get.to(() => ProfileDetailScreen());
            },
            title: "Continue",
          ),
          SizedBox(
            height: 28,
          ),
          Text(
            "Or",
            style: TextStyleClass.interBold(
              size: 15.0,
            ),
          ),
          SizedBox(
            height: 28,
          ),
          LoginCommonButtons(
            onTap: () {},
            image: ImageConst.googleSvg,
            title: "Login With Google",
          ),
        ],
      ),
    );
  }
}
