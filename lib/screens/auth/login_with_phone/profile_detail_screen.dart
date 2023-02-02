import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/profile_detail_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/my_brithday_screen.dart';
import 'package:datingapp/screens/bottomScreen/home/profileDetail/controller/profile_detail_controller.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constant/app_color.dart';

class ProfileDetailScreen extends StatelessWidget {
  ProfileDetailScreen({Key? key}) : super(key: key);
  final ProfileDetailScreenController controller =
      Get.put(ProfileDetailScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Column(
        children: [
          AppBarDesign(),
          Text(
            "Profile Details",
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
              hintText: "First Name",
              controller: controller.fNameController,
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextFromFieldCommon(
              hintText: "Last Name",
              controller: controller.lNameController,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            '''This is how it will appear in  appname
and you will not be able to change it''',
            textAlign: TextAlign.center,
            style: AppTextStyle.interRegular(
              size: 16.0,
              color: AppColor.grey697,
            ),
          ),
          SizedBox(
            height: 214,
          ),
          CommonButton(
            onTap: () {
              Get.to(() => MyBirthDAyScreen());
            },
            title: "Continue",
          ),
        ],
      ),
    );
  }
}
