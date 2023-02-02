import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/bottomScreen/profile/subscreenlist/edit_profile_screen.dart';
import 'package:datingapp/screens/bottomScreen/profile/subscreenlist/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Constant/app_color.dart';
import '../../../../Constant/app_image.dart';

///profile part1
class ProfilePart1 extends StatelessWidget {
  const ProfilePart1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: Get.height / 2,
          width: Get.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImage.edit_bg,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(
                      AppImage.appLogo,
                    ),
                  ),
                ),
                centerTitle: true,
                title: Text(
                  "YourApp",
                  style: AppTextStyle.arizoniaRegular(
                    size: 27.0,
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 152,
                    width: 152,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImage.men1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          AppColor.appColorFF4,
                          AppColor.appColorFD7,
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: AppColor.whiteFFF,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  "John Doe",
                  style: AppTextStyle.interBold(
                    size: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -60,
          right: 0,
          left: 0,
          child: Column(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      AppColor.appColorFF4,
                      AppColor.appColorFD7,
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add_a_photo,
                  size: 30,
                  color: AppColor.whiteFFF,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Add media",
                  style: AppTextStyle.interRegular(
                    size: 18.0,
                    color: AppColor.grey697,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -15,
          left: 39,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => SettingScreen());
                },
                child: Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    color: AppColor.whiteFFF,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.appColorFF5.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 31,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.settings,
                    size: 30,
                    color: AppColor.grey697,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Settings",
                  style: AppTextStyle.interRegular(
                    size: 18.0,
                    color: AppColor.grey697,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -15,
          right: 39,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => EditProfileScreen());
                },
                child: Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    color: AppColor.whiteFFF,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.appColorFF5.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 31,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.edit,
                    size: 30,
                    color: AppColor.grey697,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Edit info",
                  style: AppTextStyle.interRegular(
                    size: 18.0,
                    color: AppColor.grey697,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
