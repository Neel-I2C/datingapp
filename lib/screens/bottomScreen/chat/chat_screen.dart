import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/bottomScreen/chat/controller/chat_controller.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constant/app_color.dart';
import '../../../Constant/app_image.dart';

class ChatScreen extends StatelessWidget {
  final ChatController chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: Get.height,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "New Matches",
                        style: AppTextStyle.interSemiBold(
                          size: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        height: 88,
                        width: Get.width,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          itemCount: chatController.imageList.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                index == 0
                                    ? index0()
                                    : Container(
                                        height: 58,
                                        width: 58,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              chatController
                                                  .imageList[index].image
                                                  .toString(),
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                Text(
                                  chatController.imageList[index].name
                                      .toString(),
                                  style: AppTextStyle.interSemiBold(
                                    size: 16.0,
                                    color: AppColor.black091,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Messages",
                        style: AppTextStyle.interSemiBold(
                          size: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      messagesList(),
                      SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///message list
  Widget messagesList() {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.only(right: 24),
      itemCount: chatController.imageListForChat.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: InkWell(
            onTap: () {
              bottomSheet(
                  image:
                      chatController.imageListForChat[index].image.toString(),
                  name: chatController.imageListForChat[index].name.toString(),
                  chatController: chatController);
            },
            child: SizedBox(
              height: 48,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                chatController.imageListForChat[index].image
                                    .toString(),
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chatController.imageListForChat[index].name
                                  .toString(),
                              style: AppTextStyle.interSemiBold(
                                size: 16.0,
                              ),
                            ),
                            Text(
                              chatController.imageListForChat[index].subtitle
                                  .toString(),
                              style: AppTextStyle.interRegular(
                                size: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        chatController.imageListForChat[index].time.toString(),
                        style: AppTextStyle.interRegular(
                          size: 12.0,
                          color: AppColor.greyADA,
                        ),
                      ),
                      (index == 0 || index == 1)
                          ? Container(
                              height: 20,
                              width: 20,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.appColorFF5,
                              ),
                              child: Text(
                                "1",
                                style: AppTextStyle.interSemiBold(
                                  size: 12.0,
                                  color: AppColor.whiteFFF,
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
