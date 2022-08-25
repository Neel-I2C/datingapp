import 'package:datingapp/constants/color.dart';
import 'package:datingapp/constants/textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/add_photos_screen.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/your_interests_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/utiles/your_interest_utiles.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YourInterestScreen extends StatelessWidget {
  final YourInterestsController yourInterestsController =
      Get.put(YourInterestsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              AppBarDesign(),
              Text(
                "Your interests",
                style: TextStyleClass.interBold(
                  size: 28.0,
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                '''Select a few of your interests and let everyone
know what you’re passionate about.''',
                textAlign: TextAlign.center,
                style: TextStyleClass.interRegular(
                  size: 16.0,
                  color: ColorConst.grey69,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Obx(
                () => Text(
                  "${yourInterestsController.selectedList.length}of 5",
                  textAlign: TextAlign.center,
                  style: TextStyleClass.interRegular(
                    size: 16.0,
                    color: ColorConst.grey69,
                  ),
                ),
              ),
              SizedBox(
                height: 27,
              ),
              itemSelection(),
            ],
          ),
          Container(
            height: 111,
            width: Get.width,
            padding: EdgeInsets.only(top: 16, bottom: 40, left: 24, right: 24),
            decoration: BoxDecoration(
              color: ColorConst.white,
              border: Border.all(
                color: ColorConst.greyEB,
                width: 1,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
            ),
            child: Obx(
              () => yourInterestsController.selectedList.isEmpty
                  ? CommonButton(
                      onTap: () {},
                      colors: [
                        ColorConst.appColor.withOpacity(0.6),
                        ColorConst.appColorFD.withOpacity(0.6),
                      ],
                      title: "Continue",
                    )
                  : CommonButton(
                      onTap: () {
                        Get.to(() => AddPhotosScreen());
                      },
                      title: "Continue",
                    ),
            ),
          ),
        ],
      ),
    );
  }

  ///item selection
  Widget itemSelection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: yourInterestsController.itemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 0.65,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return GridItem(
            item: yourInterestsController.itemList[index],
            isSelected: (bool value) {
              if (value) {
                if (yourInterestsController.selectedList.length != 5) {
                  yourInterestsController.selectedList
                      .add(yourInterestsController.itemList[index]);
                }
              } else {
                yourInterestsController.selectedList
                    .remove(yourInterestsController.itemList[index]);
              }

              print("$index : $value");
            },
            selectedLength: yourInterestsController.selectedList.length,
          );
        },
      ),
    );
  }
}
