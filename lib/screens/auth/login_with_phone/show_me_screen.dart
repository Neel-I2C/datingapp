import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/show_me_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/my_school_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../Constant/app_color.dart';
import '../../../Constant/app_image.dart';

class ShowMeScreen extends StatelessWidget {
  const ShowMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Column(
        children: [
          AppBarDesign(),
          Text(
            "Show Me",
            style: AppTextStyle.interBold(
              size: 28.0,
            ),
          ),
          SizedBox(
            height: 33,
          ),
          options(),
          Spacer(),
          CommonButton(
            onTap: () {
              Get.to(() => MySchoolScreen());
            },
            title: "Continue",
          ),
          SizedBox(
            height: 184,
          ),
        ],
      ),
    );
  }

  Widget options() {
    return GetBuilder<ShowMeController>(
      init: ShowMeController(),
      builder: (controller) => ListView.builder(
        itemCount: 3,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            controller.selectedItem(index);
          },
          child: Container(
            height: 50,
            width: Get.width,
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            margin: EdgeInsets.only(left: 24, right: 24, bottom: 22),
            decoration: BoxDecoration(
              color: controller.selectedIndex == index
                  ? AppColor.appColorFF5
                  : AppColor.whiteFFF,
              borderRadius: BorderRadius.circular(40.0),
              border: Border.all(
                width: 1,
                color: AppColor.greyEBE,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.title[index],
                  style: AppTextStyle.interRegular(
                    color: controller.selectedIndex == index
                        ? AppColor.whiteFFF
                        : AppColor.black091,
                    size: 16.0,
                  ),
                ),
                SvgPicture.asset(
                  AppImage.checkIcon,
                  color: controller.selectedIndex == index
                      ? AppColor.whiteFFF
                      : AppColor.greyADA,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
