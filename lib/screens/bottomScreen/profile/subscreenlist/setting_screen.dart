import 'package:datingapp/Constant/app_image.dart';
import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/bottomScreen/profile/subscreenlist/contaroller/setting_controller.dart';
import 'package:datingapp/screens/bottomScreen/profile/subscreenlist/utiles/setting/setting_utiles.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../Constant/app_color.dart';

class SettingScreen extends StatelessWidget {
  final SettingController settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 101,
            width: Get.width,
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: AppColor.whiteFFF,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(23),
                bottomRight: Radius.circular(23),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 14,
                  color: AppColor.black000.withOpacity(0.15),
                ),
              ],
            ),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: AppColor.appColorFF5,
                ),
              ),
              centerTitle: true,
              title: Text(
                "Settings",
                style: AppTextStyle.interSemiBold(
                  size: 20.0,
                  color: AppColor.black091,
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  firstTow(),
                  firstTow(),
                  rowTwo(),
                  SizedBox(
                    height: 5,
                  ),
                  editInfoText(text: "Account Settings"),
                  Divider(),
                  InkWell(
                    onTap: () {
                      Get.to(() => PhoneEditScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 11, right: 24, left: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Phone Number",
                            style: AppTextStyle.interRegular(
                              size: 16.0,
                              color: AppColor.black091,
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Text(
                                  "+91 12345 67890",
                                  style: AppTextStyle.interRegular(
                                    color: AppColor.grey697,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColor.appColorFF5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 7, left: 24, bottom: 15),
                    child: Text(
                      "Verify a Phone Number to help secure your account.",
                      style: AppTextStyle.interSemiBold(
                        size: 14.0,
                        color: AppColor.grey697,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, bottom: 8),
                    child: Text(
                      "Discovery Settings",
                      style: AppTextStyle.interSemiBold(
                        size: 18.0,
                        color: AppColor.black091,
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 11, right: 24, left: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Location",
                          style: AppTextStyle.interRegular(
                            size: 16.0,
                            color: AppColor.black091,
                          ),
                        ),
                        Text(
                          'My Current Location',
                          style: AppTextStyle.interSemiBold(
                            size: 14.0,
                            color: AppColor.appColorFF5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, right: 45, top: 7, bottom: 15),
                    child: Text(
                      'Change your location to see Tinder members in other cities',
                      style: AppTextStyle.interSemiBold(
                        size: 14.0,
                        color: AppColor.grey697,
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, right: 24, top: 10, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Maximum Distance",
                          style: AppTextStyle.interSemiBold(
                            size: 18.0,
                            color: AppColor.appColorFF5,
                          ),
                        ),
                        Text(
                          "90mi.",
                          style: AppTextStyle.interSemiBold(
                            size: 18.0,
                            color: AppColor.black091,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => Padding(
                      padding:
                          const EdgeInsets.only(right: 20, left: 20, bottom: 8),
                      child: Slider(
                        value: settingController.currentSliderValue.value,
                        max: 100,
                        activeColor: AppColor.appColorFF5,
                        inactiveColor: AppColor.greyF4F,
                        label: settingController.currentSliderValue.value
                            .round()
                            .toString(),
                        onChanged: (double value) {
                          settingController.currentSliderValue.value = value;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, bottom: 15, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Only show people in this range',
                          style: AppTextStyle.interRegular(
                            size: 16.0,
                            color: AppColor.grey697,
                          ),
                        ),
                        Obx(
                          () => CupertinoSwitch(
                            value: settingController.on2.value,
                            activeColor: AppColor.appColorFF5,
                            onChanged: (val) {
                              settingController.on2.value = val;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Divider(),
                  InkWell(
                    onTap: () {
                      showMeBottomSheet();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 11, right: 24, left: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Show Me",
                            style: AppTextStyle.interRegular(
                              size: 16.0,
                              color: AppColor.black091,
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Text(
                                  "Women",
                                  style: AppTextStyle.interRegular(
                                    color: AppColor.grey697,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColor.appColorFF5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, right: 24, top: 10, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Age Range",
                          style: AppTextStyle.interSemiBold(
                            size: 18.0,
                            color: AppColor.appColorFF5,
                          ),
                        ),
                        Text(
                          "18 - 32",
                          style: AppTextStyle.interSemiBold(
                            size: 18.0,
                            color: AppColor.black091,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => Padding(
                      padding:
                          const EdgeInsets.only(right: 20, left: 20, bottom: 8),
                      child: RangeSlider(
                        values: settingController.currentRangeValues.value,
                        max: 100,
                        activeColor: AppColor.appColorFF5,
                        inactiveColor: AppColor.greyF4F,
                        labels: RangeLabels(
                          settingController.currentRangeValues.value.start
                              .round()
                              .toString(),
                          settingController.currentRangeValues.value.end
                              .round()
                              .toString(),
                        ),
                        onChanged: (RangeValues values) {
                          settingController.currentRangeValues.value = values;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, bottom: 15, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Only show people in this range',
                          style: AppTextStyle.interRegular(
                            size: 16.0,
                            color: AppColor.black091,
                          ),
                        ),
                        Obx(
                          () => CupertinoSwitch(
                            value: settingController.on1.value,
                            activeColor: AppColor.appColorFF5,
                            onChanged: (val) {
                              settingController.on1.value = val;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, right: 58, top: 7, bottom: 8),
                    child: Text(
                      "Tinder uses these preferences to suggest matches. Some match suggestons may not fall within your desired parameters.",
                      style: AppTextStyle.interRegular(
                        color: AppColor.grey697,
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, bottom: 5, top: 5, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Show me on Tinder",
                          style: AppTextStyle.interRegular(
                            size: 16.0,
                            color: AppColor.black091,
                          ),
                        ),
                        Obx(
                          () => CupertinoSwitch(
                            value: settingController.on3.value,
                            activeColor: AppColor.appColorFF5,
                            onChanged: (val) {
                              settingController.on3.value = val;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, right: 58, top: 7, bottom: 8),
                    child: Text(
                      "Sharing your social content will greatly increase your chances of receiving messages!",
                      style: AppTextStyle.interRegular(
                        color: AppColor.grey697,
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, bottom: 5, top: 5, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommended Sort",
                          style: AppTextStyle.interRegular(
                            size: 16.0,
                            color: AppColor.black091,
                          ),
                        ),
                        Obx(
                          () => CupertinoSwitch(
                            value: settingController.on4.value,
                            activeColor: AppColor.appColorFF5,
                            onChanged: (val) {
                              settingController.on4.value = val;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, right: 58, top: 7, bottom: 15),
                    child: Text(
                      "Turning this off will exclude your profile when your matches sort by recommended",
                      style: AppTextStyle.interRegular(
                        color: AppColor.grey697,
                      ),
                    ),
                  ),
                  Container(
                    height: 46,
                    width: Get.width,
                    margin: EdgeInsets.only(left: 24, right: 24, bottom: 15),
                    decoration: BoxDecoration(
                      color: AppColor.whiteFFF,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.black000.withOpacity(0.1),
                          /*offset: Offset(0, 0),
                          spreadRadius: 0,*/
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppImage.logout),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Logout",
                          style: AppTextStyle.interRegular(
                            size: 16.0,
                            color: AppColor.black091,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 46,
                    width: Get.width,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 24, right: 24, bottom: 58),
                    decoration: BoxDecoration(
                      color: AppColor.whiteFFF,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.black000.withOpacity(0.1),
                          /*offset: Offset(0, 0),
                          spreadRadius: 0,*/
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Text(
                      "Delete Account",
                      style: AppTextStyle.interRegular(
                        size: 16.0,
                        color: AppColor.appColorFF5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///common first two container
firstTow() {
  return Container(
    height: 70,
    width: Get.width,
    margin: EdgeInsets.only(left: 24, right: 24, bottom: 12),
    decoration: BoxDecoration(
      color: AppColor.whiteFFF,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: AppColor.black000.withOpacity(0.1),
          /*offset: Offset(0, 0),
                          spreadRadius: 0,*/
          blurRadius: 5,
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                AppImage.appLogo,
              ),
              height: 15,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "tinder",
              textAlign: TextAlign.center,
              style: AppTextStyle.interBold(
                size: 20.0,
                color: AppColor.black091,
              ),
            ),
          ],
        ),
        Text(
          "Unlock our most exclusive features",
          textAlign: TextAlign.center,
          style: AppTextStyle.interRegular(
            size: 16.0,
            color: AppColor.grey697,
          ),
        ),
      ],
    ),
  );
}
