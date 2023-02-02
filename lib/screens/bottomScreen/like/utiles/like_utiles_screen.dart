import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/bottomScreen/like/controller/like_controller.dart';
import 'package:datingapp/screens/bottomScreen/payment/pay_card_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Constant/app_color.dart';

void showAlert(
    {required BuildContext context, LikeController? likeController}) {
  final OnBoardingController onBoardingController =
      Get.put(OnBoardingController());
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: Get.width,
            child: Column(
              children: [
                SizedBox(
                  height: 21,
                ),
                Text(
                  "Get Tinder Gold",
                  style: AppTextStyle.interBold(
                    size: 22.0,
                    color: AppColor.appColorFF5,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        AppColor.appColorFE7,
                        AppColor.appColorFF5,
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColor.whiteFFF,
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                SizedBox(
                  height: 60,
                  child: PageView.builder(
                    controller: onBoardingController.pageController,
                    onPageChanged: onBoardingController.selectedPageIndex,
                    itemCount: onBoardingController.onBoardingPages.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Unlimited Likes",
                              style: AppTextStyle.interSemiBold(
                                size: 18.0,
                                color: AppColor.black000,
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              "Send as many likes as you want",
                              style: AppTextStyle.interRegular(
                                size: 12.0,
                                color: AppColor.black000,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onBoardingController.onBoardingPages.length,
                    (index) => Obx(() {
                      return Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: onBoardingController
                                          .selectedPageIndex.value ==
                                      index
                                  ? Colors.transparent
                                  : AppColor.greyC0C),
                          color: onBoardingController.selectedPageIndex.value ==
                                  index
                              ? AppColor.appColorFF4
                              : AppColor.whiteFFF,
                          shape: BoxShape.circle,
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                SizedBox(
                  height: 145,
                  child: GetBuilder<OnBoardingController>(
                    init: OnBoardingController(),
                    builder: (controller) => ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.primeInfo.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            controller.selectedItem(index);
                          },
                          child: Container(
                            height: 145,
                            width: Get.width / 3.45,
                            decoration: BoxDecoration(
                              color: AppColor.greyF7F,
                              border: Border.all(
                                color: controller.selectedIndex == index
                                    ? AppColor.appColorFF5
                                    : AppColor.greyDED,
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 19,
                                ),
                                Text(
                                  controller.primeInfo[index].image.toString(),
                                  style: AppTextStyle.interBold(
                                    size: 25.0,
                                    color: controller.selectedIndex == index
                                        ? AppColor.appColorFF5
                                        : AppColor.black000,
                                  ),
                                ),
                                Text(
                                  controller.primeInfo[index].title.toString(),
                                  style: AppTextStyle.interBold(
                                    size: 15.0,
                                    color: controller.selectedIndex == index
                                        ? AppColor.appColorFF5
                                        : AppColor.black000,
                                  ),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  controller.primeInfo[index].subTitle
                                      .toString(),
                                  style: AppTextStyle.interBold(
                                    size: 15.0,
                                    color: controller.selectedIndex == index
                                        ? AppColor.appColorFF5
                                        : AppColor.black000,
                                  ),
                                ),
                                if (index == 1)
                                  SizedBox(
                                    height: 15,
                                  ),
                                if (index == 1)
                                  Text(
                                    "Save 36%",
                                    style: AppTextStyle.interBold(
                                      size: 11.0,
                                      color: controller.selectedIndex == index
                                          ? AppColor.appColorFF5
                                          : AppColor.black000,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CommonButton(
                    onTap: () {
                      Get.back();
                      likeController!.isSelected(true);
                      Get.to(() => PaymentVaiCardScreen());
                    },
                    width: Get.width,
                    title: "CONTINUE",
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
              ],
            ),
          ),
        ],
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 27),
    ),
  );
}

commonContainerDialog() {
  return Container(
    height: 10,
    width: 10,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: AppColor.greyC0C,
        width: 0.7,
      ),
    ),
  );
}

commonContainerDialog2({var child}) {
  return Container(
    height: 145,
    width: Get.width / 3.5,
    decoration: BoxDecoration(
      color: AppColor.greyF7F,
      border: Border.all(
        color: AppColor.greyDED,
      ),
    ),
    child: Column(
      children: [
        SizedBox(
          height: 19,
        ),
        Text(
          "12",
          style: AppTextStyle.interBold(
            size: 25.0,
            color: AppColor.black000,
          ),
        ),
        Text(
          "months",
          style: AppTextStyle.interBold(
            size: 15.0,
            color: AppColor.black000,
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Text(
          "\$7/mo",
          style: AppTextStyle.interBold(
            size: 15.0,
            color: AppColor.black000,
          ),
        ),
      ],
    ),
  );
}
