import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/my_birthday_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/i_am_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../Constant/app_color.dart';
import '../../../Constant/app_image.dart';

class MyBirthDAyScreen extends StatelessWidget {
  MyBirthDAyScreen({Key? key}) : super(key: key);
  final MyBirthDAyScreenController controller =
      Get.put(MyBirthDAyScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whiteFFF,
      body: Column(
        children: [
          AppBarDesign(),
          Text(
            "My Birthday Is",
            style: AppTextStyle.interBold(
              size: 28.0,
            ),
          ),
          SizedBox(
            height: 33,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextFromFieldCommon(
              controller: controller.birthdayController,
              hintText: "MM/DD/YYYY",
              suffixIcon: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset(
                  AppImage.calander,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Your age will be public",
            textAlign: TextAlign.center,
            style: AppTextStyle.interRegular(
              size: 16.0,
              color: AppColor.grey697,
            ),
          ),
          SizedBox(
            height: 310,
          ),
          CommonButton(
            onTap: () {
              Get.to(() => IAmScreen());
            },
            title: "Continue",
          ),
        ],
      ),
    );
  }
}
