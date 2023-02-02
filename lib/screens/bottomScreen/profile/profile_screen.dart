import 'package:datingapp/screens/bottomScreen/profile/utiles/profile_utiles.dart';
import 'package:datingapp/screens/match/match_screen.dart';
import 'package:datingapp/screens/onboadingScreen/controller/onboarding_controller.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../Constant/app_color.dart';
import '../../../Constant/app_image.dart';
import '../../../Constant/app_textstyle.dart';

class ProfileScreen extends StatelessWidget {
  final OnBoardingController onBoardingController =
      Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProfilePart1(),
          Padding(
            padding: const EdgeInsets.only(top: 90, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImage.boost),
                SizedBox(
                  width: 11,
                ),
                Text(
                  "Boost",
                  style: AppTextStyle.interBold(
                    size: 26.0,
                    color: AppColor.black091,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 65,
            child: PageView.builder(
              controller: onBoardingController.pageController,
              onPageChanged: onBoardingController.selectedPageIndex,
              itemCount: onBoardingController.onBoardingPages1.length,
              itemBuilder: (context, index) {
                return Text(
                  onBoardingController.onBoardingPages1[index],
                  textAlign: TextAlign.center,
                  style: AppTextStyle.interRegular(
                    size: 18.0,
                    color: AppColor.grey697,
                  ),
                );
              },
            ),
          ),
          /* Text(
            '''Be a top profile in your area for
30 minutes to get more matches''',
            textAlign: TextAlign.center,
            style: TextStyleClass.interRegular(
              size: 18.0,
              color: ColorConst.grey69,
            ),
          ),*/
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onBoardingController.onBoardingPages1.length,
              (index) => Obx(
                () {
                  return Container(
                    margin: const EdgeInsets.all(4),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color:
                          onBoardingController.selectedPageIndex.value == index
                              ? AppColor.appColorFF4
                              : AppColor.greyD9D,
                      shape: BoxShape.circle,
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: Get.height / 15.63 /*57*/,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 53),
            child: CommonButton(
              onTap: () {
                Get.to(() => MatchScreen());
              },
              width: Get.width,
              title: "My Boosts",
            ),
          ),
        ],
      ),
    );
  }
}
