import 'dart:ui';
import 'package:datingapp/screens/bottomScreen/like/controller/like_controller.dart';
import 'package:datingapp/screens/bottomScreen/like/utiles/like_utiles_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../Constant/app_color.dart';
import '../../../Constant/app_image.dart';
import '../../../Constant/app_textstyle.dart';

class LikeScreen extends StatelessWidget {
  final LikeController likeController = Get.put(LikeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 175,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppBar(
                  elevation: 0,
                  backgroundColor: AppColor.whiteFFF,
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
                Container(
                  height: 55,
                  width: Get.width,
                  padding:
                      EdgeInsets.only(bottom: 9, top: 9, right: 14, left: 14),
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(
                      color: AppColor.greyE8E,
                    ),
                  ),
                  child: Obx(
                    () => Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              likeController.isScreen(false);
                            },
                            color: likeController.isScreen.isFalse
                                ? AppColor.appColorFF5
                                : AppColor.greyF2F,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Text(
                              "4 Likes",
                              style: AppTextStyle.interBold(
                                size: 16.0,
                                color: likeController.isScreen.isFalse
                                    ? AppColor.whiteFFF
                                    : AppColor.black030,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              if (likeController.isSelected.isFalse) {
                                return;
                              } else {
                                likeController.isScreen(true);
                              }
                            },
                            color: likeController.isScreen.isTrue
                                ? AppColor.appColorFF5
                                : AppColor.greyF2F,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Text(
                              "Top Picks",
                              style: AppTextStyle.interBold(
                                size: 16.0,
                                color: likeController.isScreen.isTrue
                                    ? AppColor.whiteFFF
                                    : AppColor.black030,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => likeController.isSelected.isFalse
                ? BottomPart1(likeController: likeController)
                : BottomPart2(likeController: likeController),
          ),
        ],
      ),
    );
  }
}

///bottompart
class BottomPart1 extends StatelessWidget {
  final LikeController likeController;

  BottomPart1({required this.likeController});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 11,
            ),
            Text(
              '''Upgrade to Gold to see people
who have already liked you.''',
              textAlign: TextAlign.center,
              style: AppTextStyle.interRegular(
                size: 18.0,
                color: AppColor.grey697,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: likeController.itemList.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 2.4,
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 23),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      showAlert(
                          context: context, likeController: likeController);
                    },
                    child: Container(
                      constraints: BoxConstraints.expand(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            likeController.itemList[index].image.toString(),
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            color: Colors.grey.withOpacity(0.1),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, bottom: 16),
                              child: SvgPicture.asset(AppImage.menu),
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
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: CommonButton(
                onTap: () {
                  // Get.to(() => EnableLocationScreen());
                },
                width: Get.width,
                title: "SEE WHO LIKES YOU",
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

class BottomPart2 extends StatelessWidget {
  final LikeController likeController;

  BottomPart2({required this.likeController});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 11,
            ),
            Obx(
              () => Text(
                likeController.isScreen.isTrue
                    ? '''Upgrade to Tinder Gold for
more Top Picks!'''
                    : '''Upgrade to Gold to see people
who have already liked you.''',
                textAlign: TextAlign.center,
                style: AppTextStyle.interRegular(
                  size: 18.0,
                  color: AppColor.grey697,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: likeController.itemList.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 2.4,
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 23),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      /*  showAlert(
                          context: context, likeController: likeController);*/
                    },
                    child: Container(
                      constraints: BoxConstraints.expand(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            likeController.itemList[index].image.toString(),
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          // alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            image: DecorationImage(
                              image: AssetImage(AppImage.blur_bg),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Obx(
                            () => Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, bottom: 14),
                              child: likeController.isScreen.isTrue
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            margin: EdgeInsets.only(
                                                top: 6, right: 6),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColor.whiteFFF,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: AppColor.appColorFF5
                                                      .withOpacity(0.25),
                                                  blurRadius: 31,
                                                  offset: Offset(0, 4),
                                                )
                                              ],
                                            ),
                                            child: Icon(
                                              Icons.star,
                                              color: AppColor.purple8A2,
                                            ),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Rex, 27",
                                              style: AppTextStyle.interSemiBold(
                                                size: 22.0,
                                                color: AppColor.whiteFFF,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "\u2022 ",
                                                  style: AppTextStyle
                                                      .interSemiBold(
                                                    size: 14.0,
                                                    color: AppColor.green4FD,
                                                  ),
                                                ),
                                                Text(
                                                  "Recently Active",
                                                  style: AppTextStyle
                                                      .interSemiBold(
                                                    size: 14.0,
                                                    color: AppColor.whiteFFF,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        "Rex, 27",
                                        style: AppTextStyle.interSemiBold(
                                          size: 22.0,
                                          color: AppColor.whiteFFF,
                                        ),
                                      ),
                                    ),
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
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Obx(
                () => CommonButton(
                  onTap: () {
                    // Get.to(() => EnableLocationScreen());
                  },
                  width: Get.width,
                  title: likeController.isScreen.isTrue
                      ? "UNLOCK TOP PICKS"
                      : "SEE WHO LIKES YOU",
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
