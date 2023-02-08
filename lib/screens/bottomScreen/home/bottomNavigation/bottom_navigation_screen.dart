import 'package:datingapp/screens/bottomScreen/home/bottomNavigation/bottom_navigation_controller.dart';
import 'package:datingapp/screens/bottomScreen/profile/profile_screen.dart';
import 'package:datingapp/screens/bottomScreen/chat/chat_screen.dart';
import 'package:datingapp/screens/bottomScreen/home/home_screen.dart';
import 'package:datingapp/screens/bottomScreen/like/like_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../Constant/app_color.dart';
import '../../../../Constant/app_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  final NavigationController navigationController =
      Get.put(NavigationController());
  final pages = [
    HomeScreen(),
    LikeScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8E6EA),
      resizeToAvoidBottomInset: false,
      body: Obx(
        () => Stack(
          alignment: Alignment.bottomCenter,
          children: [
            pages[navigationController.pageIndex.value],
            buildMyNavBar(context),
          ],
        ),
      ),
    );
  }

  buildMyNavBar(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: AppColor.whiteFFF,
        boxShadow: [
          BoxShadow(
            color: AppColor.greyE8E,
            blurRadius: 5,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => SizedBox(
              height: 48,
              width: 60,
              child: InkWell(
                onTap: () {
                  navigationController.pageIndex.value = 0;
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: navigationController.pageIndex.value == 0
                            ? AppColor.appColorFF5
                            : AppColor.whiteFFF,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SvgPicture.asset(
                      navigationController.pageIndex.value == 0
                          ? AppImage.card
                          : AppImage.card1,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => SizedBox(
              height: 70,
              width: 70,
              child: InkWell(
                onTap: () {
                  navigationController.pageIndex.value = 1;
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: navigationController.pageIndex.value == 1
                            ? AppColor.appColorFF5
                            : AppColor.whiteFFF,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SvgPicture.asset(
                      navigationController.pageIndex.value == 1
                          ? AppImage.like2
                          : AppImage.like,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => SizedBox(
              height: 70,
              width: 70,
              child: InkWell(
                onTap: () {
                  navigationController.pageIndex.value = 2;
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: navigationController.pageIndex.value == 2
                            ? AppColor.appColorFF5
                            : AppColor.whiteFFF,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SvgPicture.asset(
                      navigationController.pageIndex.value == 2
                          ? AppImage.message1
                          : AppImage.message,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => SizedBox(
              height: 70,
              width: 70,
              child: InkWell(
                onTap: () {
                  navigationController.pageIndex.value = 3;
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: navigationController.pageIndex.value == 3
                            ? AppColor.appColorFF5
                            : AppColor.whiteFFF,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SvgPicture.asset(
                      navigationController.pageIndex.value == 3
                          ? AppImage.people1
                          : AppImage.people,
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
