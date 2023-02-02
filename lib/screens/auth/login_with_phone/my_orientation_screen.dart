import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/my_orientation_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/show_me_screen.dart';
import 'package:datingapp/screens/auth/login_with_phone/utiles/orientation_utiles.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constant/app_color.dart';

class MyOrientationScreen extends StatefulWidget {
  @override
  State<MyOrientationScreen> createState() => _MyOrientationScreenState();
}

class _MyOrientationScreenState extends State<MyOrientationScreen> {
  final MyOrientationController myOrientationController =
      Get.put(MyOrientationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Column(
        children: [
          AppBarDesign(
            action: [
              TextButton(
                onPressed: () {
                  Get.to(() => ShowMeScreen());
                },
                child: Text(
                  "Skip",
                  style: AppTextStyle.interBold(
                    size: 16.0,
                    color: AppColor.appColorFF4,
                  ),
                ),
              ),
            ],
          ),
          Text(
            "My Sexual orientation is",
            style: AppTextStyle.interBold(
              size: 28.0,
            ),
          ),
          SizedBox(
            height: 11,
          ),
          Text(
            "Select up t o 3",
            textAlign: TextAlign.center,
            style: AppTextStyle.interRegular(
              size: 16.0,
              color: AppColor.grey697,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: MultiSelectChip(
              myOrientationController.reportList,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Checkbox(
                  value: myOrientationController.monVal.value,
                  onChanged: (val) {
                    myOrientationController.monVal.value = val!;
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  activeColor: AppColor.appColorFF5,
                ),
              ),
              Text(
                "Show my orientation on my profile",
                style: AppTextStyle.interRegular(
                  color: AppColor.grey697,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CommonButton(
            onTap: () {
              Get.to(() => ShowMeScreen());
            },
            title: "Continue",
          ),
          SizedBox(
            height: 49,
          ),
        ],
      ),
    );
  }
}
