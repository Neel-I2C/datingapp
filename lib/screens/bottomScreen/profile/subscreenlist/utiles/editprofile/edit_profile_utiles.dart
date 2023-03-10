import 'package:datingapp/screens/auth/login_with_phone/controller/i_am_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/my_orientation_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/your_interests_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/i_am_screen.dart';
import 'package:datingapp/screens/auth/login_with_phone/utiles/orientation_utiles.dart';
import 'package:datingapp/screens/auth/login_with_phone/utiles/your_interest_utiles.dart';
import 'package:datingapp/screens/bottomScreen/profile/subscreenlist/contaroller/edit_profile_controller.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../Constant/app_color.dart';
import '../../../../../../Constant/app_textstyle.dart';

///interest bottom sheet
interestBottomSheet() {
  final YourInterestsController yourInterestsController =
      Get.put(YourInterestsController());
  return Get.bottomSheet(
    Padding(
      padding: const EdgeInsets.only(top: 96),
      child: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: AppColor.whiteFFF,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Interests",
                    style: AppTextStyle.interBold(
                      size: 28.0,
                      color: AppColor.black091,
                    ),
                  ),
                  Text(
                    "5 of 5",
                    style: AppTextStyle.interRegular(
                      size: 16.0,
                      color: AppColor.grey697,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 44,
                    width: Get.width,
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(
                      color: AppColor.greyF4F,
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        color: AppColor.greyF4F,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: AppColor.appColorFF5,
                          size: 20,
                        ),
                        hintText: "Search",
                        hintStyle: AppTextStyle.interRegular(
                          size: 16.0,
                          color: AppColor.grey697,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount:
                          yourInterestsController.itemListInterest.length,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2 / 0.65,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return GridItem(
                          item: yourInterestsController.itemListInterest[index],
                          isSelected: (bool value) {
                            if (value) {
                              if (yourInterestsController.selectedList.length !=
                                  5) {
                                yourInterestsController.selectedList.add(
                                  yourInterestsController
                                      .itemListInterest[index].title,
                                );
                              }
                            } else {
                              yourInterestsController.selectedList.remove(
                                yourInterestsController
                                    .itemListInterest[index].title,
                              );
                            }

                            print("$index : $value");
                          },
                          selectedLength:
                              yourInterestsController.selectedList.length,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ),
            Container(
              height: 111,
              width: Get.width,
              padding:
                  EdgeInsets.only(top: 16, bottom: 40, left: 24, right: 24),
              decoration: BoxDecoration(
                color: AppColor.whiteFFF,
                border: Border.all(
                  color: AppColor.greyEBE,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24),
                ),
              ),
              child: CommonButton(
                onTap: () {
                  // Get.to(() => AddPhotosScreen());
                },
                title: "Done",
              ),
            ),
          ],
        ),
      ),
    ),
    isScrollControlled: true,
  );
}

///life style bottom sheet
lifestyleBottomSheet() {
  final EditProfileTabController editProfileTabController =
      Get.put(EditProfileTabController());
  return Get.bottomSheet(
    Padding(
      padding: const EdgeInsets.only(top: 96),
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.whiteFFF,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: Get.width,
              margin: EdgeInsets.only(top: 42, right: 24, left: 24, bottom: 24),
              // padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: AppColor.whiteFFF,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: AppColor.greyE8E)),
              child: TabBar(
                tabs: editProfileTabController.myTabs,
                unselectedLabelColor: AppColor.grey697,
                labelStyle: AppTextStyle.interRegular(
                  size: 16.0,
                  color: AppColor.whiteFFF,
                ),
                unselectedLabelStyle: AppTextStyle.interRegular(
                  size: 16.0,
                  color: AppColor.grey697,
                ),
                labelColor: AppColor.whiteFFF,
                controller: editProfileTabController.controller,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColor.appColorFF5,
                ),
              ),
            ),
            Divider(),
            Expanded(
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: TabBarView(
                  controller: editProfileTabController.controller,
                  children: [
                    Zodiac(),
                    Pets(), /* CancelledBooking()*/
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    isScrollControlled: true,
  );
}

class Zodiac extends StatelessWidget {
  final EditProfileTabController editProfileTabController =
      Get.put(EditProfileTabController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "What???s your zodiac sign?",
          style: AppTextStyle.interBold(
            size: 16.0,
            color: AppColor.black000,
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: MultiSelectChip(
            editProfileTabController.zodiacList,
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            "Skip",
            style: AppTextStyle.interSemiBold(
              size: 17.0,
              color: AppColor.black000,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        CommonButton(
          onTap: () {
            // Get.to(() => AddPhotosScreen());
          },
          title: "Done",
        ),
        SizedBox(
          height: 44,
        ),
      ],
    );
  }
}

class Pets extends StatelessWidget {
  final EditProfileTabController editProfileTabController =
      Get.put(EditProfileTabController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Do you have any pets?",
          style: AppTextStyle.interBold(
            size: 16.0,
            color: AppColor.black000,
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: MultiSelectChip(
            editProfileTabController.petList,
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            "Skip",
            style: AppTextStyle.interSemiBold(
              size: 17.0,
              color: AppColor.black000,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        CommonButton(
          onTap: () {
            // Get.to(() => AddPhotosScreen());
          },
          title: "Done",
        ),
        SizedBox(
          height: 44,
        ),
      ],
    );
  }
}

///i am bottom sheet
iAmBottomSheet() {
  final IAmController iAmController = Get.put(IAmController());
  return Get.bottomSheet(
    Padding(
      padding: const EdgeInsets.only(top: 96),
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.whiteFFF,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "I am a",
              style: AppTextStyle.interBold(
                size: 28.0,
              ),
            ),
            SizedBox(
              height: 33,
            ),
            options(),
            Divider(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Checkbox(
                    value: iAmController.monVal.value,
                    onChanged: (val) {
                      iAmController.monVal.value = val!;
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    activeColor: AppColor.appColorFF5,
                    // fillColor: ColorConst.appColorFF,
                  ),
                ),
                /*  Text(
                  "Show my gender on my profile",
                  style: TextStyleClass.interRegular(
                    color: ColorConst.grey69,
                  ),
                ),*/
                Text(
                  "Show my gender on my profile",
                  style: AppTextStyle.interRegular(
                    color: AppColor.grey697,
                  ),
                ),
              ],
            ),
            CommonButton(
              onTap: () {
                // Get.to(() => MyOrientationScreen());
              },
              title: "Done",
            ),
            SizedBox(
              height: 44,
            ),
          ],
        ),
      ),
    ),
    isScrollControlled: true,
  );
}

/// Sexual Orientation bottom sheet
orientationBottomSheet() {
  final MyOrientationController myOrientationController =
      Get.put(MyOrientationController());
  return Get.bottomSheet(
    Padding(
      padding: const EdgeInsets.only(top: 96),
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColor.whiteFFF,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Sexual Orientation",
              style: AppTextStyle.interBold(
                size: 28.0,
              ),
            ),
            /* SizedBox(
              height: 11,
            ),*/
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
                    // fillColor: ColorConst.appColorFF,
                  ),
                ),
                Text(
                  "Show my gender on my profile",
                  style: AppTextStyle.interRegular(
                    color: AppColor.grey697,
                  ),
                ),
              ],
            ),
            CommonButton(
              onTap: () {
                // Get.to(() => ShowMeScreen());
              },
              title: "Done",
            ),
            SizedBox(
              height: 44,
            ),
          ],
        ),
      ),
    ),
    isScrollControlled: true,
  );
}
