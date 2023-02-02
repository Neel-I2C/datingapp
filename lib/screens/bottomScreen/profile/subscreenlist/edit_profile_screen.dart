import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/add_photos_controller.dart';
import 'package:datingapp/screens/bottomScreen/profile/subscreenlist/utiles/editprofile/edit_profile_utiles.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Constant/app_color.dart';
import '../../../../Constant/app_image.dart';

class EditProfileScreen extends StatelessWidget {
  final AddPhotosController addPhotosController =
      Get.put(AddPhotosController());

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
                "Edit info",
                style: AppTextStyle.interSemiBold(
                  size: 20.0,
                  color: AppColor.black091,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 22,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: 9,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 2 / 2.5,
                            crossAxisSpacing: 11,
                            mainAxisSpacing: 9),
                        itemBuilder: (context, index) {
                          return ((index == 0 || index == 1))
                              ? Container(
                                  height: 142,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        index == 0
                                            ? AppImage.men1
                                            : AppImage.men2,
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      margin: EdgeInsets.only(right: 5, top: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.black45,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.cancel_outlined,
                                        color: AppColor.appColorFF5,
                                      ),
                                    ),
                                  ),
                                )
                              : DottedBorder(
                                  padding: EdgeInsets.zero,
                                  borderType: BorderType.RRect,
                                  color: AppColor.appColorFF5,
                                  radius: Radius.circular(12),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    child: Container(
                                      height: 142,
                                      width: Get.width,
                                      color:
                                          AppColor.appColorFD7.withOpacity(0.2),
                                      child: Padding(
                                        padding: const EdgeInsets.all(34),
                                        child: FloatingActionButton(
                                          heroTag: "Text",
                                          backgroundColor: AppColor.appColorFD7,
                                          elevation: 0.0,
                                          onPressed: () {
                                            addPhotosController.selected.value =
                                                !addPhotosController
                                                    .selected.value;
                                          },
                                          child: Icon(
                                            Icons.add,
                                            color: AppColor.whiteFFF,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        '''Add a video, pic or Loop to get 4% closer
to completing your profile and you may
even get more Likes.''',
                        textAlign: TextAlign.center,
                        style: AppTextStyle.interRegular(
                          size: 18.0,
                          color: AppColor.grey697,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CommonButton(
                        onTap: () {
                          // Get.to(() => AccountRecoveryScreen());
                        },
                        width: Get.width,
                        title: "Add Media",
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    editInfoText(text: "Photo Options"),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Smart Photos",
                            style: AppTextStyle.interRegular(
                              size: 18.0,
                              color: AppColor.grey697,
                            ),
                          ),
                          Obx(
                            () => CupertinoSwitch(
                              value: addPhotosController.on.value,
                              activeColor: AppColor.appColorFF5,
                              onChanged: (val) {
                                addPhotosController.on.value = val;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        "Smart Photos continuously tests all your profile photos to find the best one.",
                        style: AppTextStyle.interRegular(
                          size: 18.0,
                          color: AppColor.grey697,
                        ),
                      ),
                    ),
                    editInfoText(text: "About Me"),
                    Container(
                      height: 91,
                      margin: EdgeInsets.only(
                          left: 24, right: 24, top: 8, bottom: 15),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: AppColor.greyDAD,
                          width: 1,
                        ),
                      ),
                      child: TextField(
                        maxLength: 500,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "About me",
                          hintStyle: AppTextStyle.interRegular(
                            size: 16.0,
                            color: AppColor.greyB5C,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        interestBottomSheet();
                      },
                      child: editInfoText(text: "Interests"),
                    ),
                    Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 24, top: 14, bottom: 13),
                      child: Text(
                        "Sports, Fashion, Gym, Motorcycling,Photography",
                        style: AppTextStyle.interRegular(
                          size: 18.0,
                          color: AppColor.grey697,
                        ),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {
                        lifestyleBottomSheet();
                      },
                      child: editInfoText(text: "Lifestyle"),
                    ),
                    Divider(),
                    editInfoRow(image: AppImage.moon, title: "Zodiac"),
                    editInfoRow(image: AppImage.pet, title: "Pets"),
                    Divider(),
                    editInfoText(text: "Job Title"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: TextFromFieldCommon(hintText: "Add Job Title"),
                    ),
                    editInfoText(text: "Company"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: TextFromFieldCommon(hintText: "Add Company"),
                    ),
                    editInfoText(text: "School"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: TextFromFieldCommon(hintText: "Add School"),
                    ),
                    editInfoText(text: "Living In"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: TextFromFieldCommon(hintText: "Add City"),
                    ),
                    editInfoText(text: "Show my Instagram Photos"),
                    editInfoContainer(title: "Connect Instagram"),
                    editInfoText(text: "My Top Spotify Artists"),
                    editInfoContainer(title: "Add Spotify to Your Profile"),
                    InkWell(
                      onTap: () {
                        iAmBottomSheet();
                      },
                      child: editInfoText(text: "I Am"),
                    ),
                    Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 12, left: 24, bottom: 12),
                      child: Text(
                        "Man",
                        style: AppTextStyle.interRegular(
                          size: 16.0,
                          color: AppColor.grey697,
                        ),
                      ),
                    ),
                    Divider(),
                    InkWell(
                      onTap: () {
                        orientationBottomSheet();
                      },
                      child: editInfoText(text: "Sexual Orientation"),
                    ),
                    Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 12, left: 24, bottom: 12),
                      child: Text(
                        "Straight",
                        style: AppTextStyle.interRegular(
                          size: 16.0,
                          color: AppColor.grey697,
                        ),
                      ),
                    ),
                    Divider(),
                    editInfoText(text: "Control Your Profile"),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Don’t Show My Age",
                            style: AppTextStyle.interRegular(
                              size: 18.0,
                              color: AppColor.grey697,
                            ),
                          ),
                          Obx(
                            () => CupertinoSwitch(
                              value: addPhotosController.on1.value,
                              activeColor: AppColor.appColorFF5,
                              onChanged: (val) {
                                addPhotosController.on1.value = val;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Don’t Show My Distance",
                            style: AppTextStyle.interRegular(
                              size: 18.0,
                              color: AppColor.grey697,
                            ),
                          ),
                          Obx(
                            () => CupertinoSwitch(
                              value: addPhotosController.on2.value,
                              activeColor: AppColor.appColorFF5,
                              onChanged: (val) {
                                addPhotosController.on2.value = val;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 52,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
