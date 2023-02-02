import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/bottomScreen/home/notification/controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Constant/app_color.dart';
import '../../../../Constant/app_image.dart';

class NotificationScreen extends StatelessWidget {
  final NotificationController notificationController =
      Get.put(NotificationController());

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
              backgroundColor: AppColor.transparent,
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
                "Notification",
                style: AppTextStyle.interSemiBold(
                  size: 20.0,
                  color: AppColor.black091,
                ),
              ),
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.only(top: 20),
            shrinkWrap: true,
            itemCount: notificationController.notificationList.length,
            itemBuilder: (context, index) {
              return Container(
                height: 168,
                width: Get.width,
                padding: EdgeInsets.only(right: 28, left: 30, top: 22),
                decoration: BoxDecoration(
                  color: (index == 0 || index == 1)
                      ? AppColor.appColorFF5.withOpacity(0.05)
                      : AppColor.whiteFFF,
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.greyEBE,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (index == 0 || index == 1)
                        ? Stack(
                            clipBehavior: Clip.none,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image(
                                  image: AssetImage(AppImage.men1),
                                  height: 28,
                                  width: 28,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                right: -5,
                                top: -5,
                                child: Container(
                                  height: 15,
                                  width: 14,
                                  decoration: BoxDecoration(
                                    color: AppColor.appColorFF5,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image(
                              image: AssetImage(AppImage.gril1Without),
                              height: 28,
                              width: 28,
                              fit: BoxFit.fill,
                            ),
                          ),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "5h ago",
                            style: AppTextStyle.interRegular(
                              size: 12.0,
                              color: AppColor.grey6B6,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 11),
                            child: Text(
                              notificationController
                                  .notificationList[index].title,
                              style: AppTextStyle.interRegular(
                                size: 16.0,
                                color: AppColor.black000,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do...",
                              /*maxLines: 2,
                              overflow: TextOverflow.ellipsis,*/
                              style: AppTextStyle.interRegular(
                                size: 12.0,
                                color: AppColor.grey6B6,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
