import 'package:datingapp/screens/bottomScreen/chat/controller/chat_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../Constant/app_color.dart';
import '../../Constant/app_image.dart';
import '../../Constant/app_textstyle.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

///common button
// ignore: must_be_immutable
class CommonButton extends StatelessWidget {
  late String? title;
  late double? width;
  late List<Color>? colors;
  late dynamic onTap;

  CommonButton({this.title, this.width, required this.onTap, this.colors});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: width ?? Get.width / 1.14 /*360*/,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.0),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: colors ??
                [
                  AppColor.appColorFF4,
                  AppColor.appColorFD7,
                ],
          ),
        ),
        child: Text(
          title!,
          style: AppTextStyle.interSemiBold(
            size: 20.0,
            color: AppColor.whiteFFF,
          ),
        ),
      ),
    );
  }
}

///login common buttons
// ignore: must_be_immutable
class LoginCommonButtons extends StatelessWidget {
  String? image;
  String? title;
  dynamic onTap;

  LoginCommonButtons({this.image, required this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: MaterialButton(
        onPressed: onTap,
        height: 61,
        minWidth: Get.width,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
          side: BorderSide(
            color: AppColor.greyDAD,
            width: 1,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width >= 411 ? 80 : 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(image!),
              Text(
                title!,
                style: AppTextStyle.interSemiBold(
                  size: 16.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

///appbar for common
class AppBarDesign extends StatelessWidget {
  late final List<Widget>? action;

  AppBarDesign({this.action});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.whiteFFF,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColor.appColorFF4,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      /*foregroundColor: ColorConst.appColor,*/
      automaticallyImplyLeading: false,
      actions: action,
    );
  }
}

///text from field
class TextFromFieldCommon extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final bool? isTrue;
  final TextEditingController? controller;

  TextFromFieldCommon({
    this.hintText,
    this.suffixIcon,
    this.isTrue,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      /*readOnly: isTrue ?? false,*/
      enabled: isTrue ?? true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 35, left: 20),
        suffixIcon: suffixIcon ?? SizedBox.shrink(),
        hintText: hintText,
        hintStyle: AppTextStyle.interRegular(
          size: 16.0,
          color: AppColor.greyB5C,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: AppColor.greyEBE,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: AppColor.greyEBE,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: AppColor.appColorFF4,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: AppColor.appColorFF4,
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: AppColor.appColorFF4,
            width: 1,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: AppColor.greyEBE,
            width: 1,
          ),
        ),
      ),
    );
  }
}

///container for post
// ignore: must_be_immutable
class PostContain extends StatelessWidget {
  double? height;
  double? width;
  Widget? child;
  Color? color;

  PostContain({this.height, this.width, this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? AppColor.whiteFFF,
        boxShadow: [
          BoxShadow(
            blurRadius: 31,
            color: AppColor.appColorFF5.withOpacity(0.25),
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}

///common row for profile detail
commonRowProfileD({var icon, var title}) {
  return Row(
    children: [
      Icon(
        icon,
        color: AppColor.appColorFF5,
      ),
      /*SvgPicture.asset(
                      ImageConst.uni,
                    ),*/
      SizedBox(
        width: 5,
      ),
      Text(
        title,
        style: AppTextStyle.interRegular(
          color: AppColor.black000,
        ),
      ),
    ],
  );
}

///common button for profile detail
// ignore: must_be_immutable
class CommonButtonProfileDetail extends StatelessWidget {
  String? image;
  String? title;

  CommonButtonProfileDetail({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 100,
      decoration: BoxDecoration(
        color: AppColor.whiteFFF,
        borderRadius: BorderRadius.circular(35.0),
        border: Border.all(
          color: AppColor.greyE8E,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image!,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            title!,
            style: AppTextStyle.interSemiBold(
              color: AppColor.black091,
              size: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}

///bottomsheet  chat screen
bottomSheet({var image, var name, required ChatController chatController}) {
  Get.bottomSheet(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
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
                                      image,
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
                                    name,
                                    style: AppTextStyle.interSemiBold(
                                      size: 24.0,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\u2022",
                                        style: AppTextStyle.interSemiBold(
                                          size: 14.0,
                                          color: AppColor.appColorFF5,
                                        ),
                                      ),
                                      Text(
                                        "Online",
                                        style: AppTextStyle.interSemiBold(
                                          size: 14.0,
                                          color: AppColor.greyADA,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(AppImage.phone_icon),
                            SizedBox(
                              width: 14,
                            ),
                            SvgPicture.asset(AppImage.video_icon),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Row(
                        children: [
                          Expanded(child: Divider()),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Today",
                              style: AppTextStyle.interSemiBold(
                                size: 16.0,
                              ),
                            ),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: chatController.messageList.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Column(
                        crossAxisAlignment:
                            chatController.messageList[index].isEnable == true
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color:
                                  chatController.messageList[index].isEnable ==
                                          true
                                      ? AppColor.appColorFF5.withOpacity(0.08)
                                      : AppColor.greyF4F,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0),
                                bottomRight: chatController
                                            .messageList[index].isEnable ==
                                        true
                                    ? Radius.circular(15.0)
                                    : Radius.circular(0.0),
                                bottomLeft: chatController
                                            .messageList[index].isEnable ==
                                        true
                                    ? Radius.circular(0.0)
                                    : Radius.circular(15.0),
                              ),
                            ),
                            child: Text(
                              chatController.messageList[index].message
                                  .toString(),
                              style: AppTextStyle.interRegular(
                                color: AppColor.black091,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment:
                                chatController.messageList[index].isEnable ==
                                        true
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.end,
                            children: [
                              Text(
                                chatController.messageList[index].time
                                    .toString(),
                                style: AppTextStyle.interRegular(
                                  color: AppColor.greyADA,
                                ),
                              ),
                              chatController.messageList[index].isEnable != true
                                  ? SvgPicture.asset(AppImage.double_icon)
                                  : SizedBox.shrink(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
            Container(
              color: AppColor.whiteFFF,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(right: 24, left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 48,
                        width: Get.width,
                        padding: EdgeInsets.only(left: 18),
                        decoration: BoxDecoration(
                          color: AppColor.whiteFFF,
                          border: Border.all(
                            color: AppColor.greyE8E,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(14),
                              child: SvgPicture.asset(
                                AppImage.add_image,
                              ),
                            ),
                            hintText: "Your message",
                            hintStyle: AppTextStyle.interRegular(
                              size: 16.0,
                              color: AppColor.greyADA,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.whiteFFF,
                        border: Border.all(
                          color: AppColor.greyE8E,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Icon(
                        Icons.mic_rounded,
                        color: AppColor.appColorFF5,
                      ),
                    ),
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

///index 0 design
Widget index0() {
  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      Container(
        height: 66,
        width: 66,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: AppColor.yellowD4A,
          ),
        ),
      ),
      Container(
        height: 58,
        width: 58,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              AppImage.photo_1,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        height: 32,
        width: 32,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.yellowD4A,
          shape: BoxShape.circle,
        ),
        child: Text(
          "99+",
          style: AppTextStyle.interSemiBold(
            size: 14.0,
            color: AppColor.whiteFFF,
          ),
        ),
      ),
      Positioned(
        bottom: -6,
        child: Container(
          height: 20,
          width: 20,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColor.whiteFFF,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColor.black000.withOpacity(0.25),
                offset: Offset(0, 0),
                blurRadius: 4,
              ),
            ],
          ),
          child: Icon(
            Icons.favorite,
            color: AppColor.yellowD4A,
            size: 10,
          ),
        ),
      ),
    ],
  );
}

///EDIT IND=FO SCREEN TET WIDGE
editInfoText({var text}) {
  return Padding(
    padding: const EdgeInsets.only(top: 15, left: 24, bottom: 8),
    child: Text(
      text,
      style: AppTextStyle.interSemiBold(
        size: 18.0,
        color: AppColor.black091,
      ),
    ),
  );
}

///edit info row
editInfoRow({var image, var title}) {
  return Padding(
    padding: const EdgeInsets.only(right: 24, left: 24, bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              SvgPicture.asset(image),
              SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: AppTextStyle.interSemiBold(
                  size: 16.0,
                  color: AppColor.grey697,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Text(
                "Empty",
                style: AppTextStyle.interSemiBold(
                  size: 16.0,
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
  );
}

///edit info container
editInfoContainer({var title}) {
  return Container(
    height: 50,
    alignment: Alignment.centerLeft,
    width: Get.width,
    margin: EdgeInsets.symmetric(horizontal: 24),
    padding: EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      border: Border.all(
        color: AppColor.greyDAD,
        width: 1,
      ),
    ),
    child: Text(
      title,
      style: AppTextStyle.interSemiBold(
        size: 16.0,
        color: AppColor.appColorFF5,
      ),
    ),
  );
}

///setting screen one roe tow contenorr
rowTwo() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Row(
      children: [
        Expanded(
          child: Container(
            height: 86,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColor.whiteFFF,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: AppColor.black000.withOpacity(0.1),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: AppColor.whiteFFF,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.appColorFF5.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 31,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppImage.boost),
                  ),
                ),
                Text(
                  "Get Boosts",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.interBold(
                    size: 16.0,
                    color: AppColor.purpleAA3,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 11,
        ),
        Expanded(
          child: Container(
            height: 86,
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColor.whiteFFF,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: AppColor.black000.withOpacity(0.1),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: AppColor.whiteFFF,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.appColorFF5.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 31,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.star,
                    color: AppColor.purple8A2,
                  ),
                ),
                Text(
                  "Get Super Likes",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.interBold(
                    size: 16.0,
                    color: AppColor.purple8A2,
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

///doted line widget
class DotWidget extends StatelessWidget {
  final double totalWidth, dashWidth, emptyWidth, dashHeight, padding;

  final Color dashColor;

  const DotWidget({
    this.totalWidth = 300,
    this.dashWidth = 10,
    this.emptyWidth = 5,
    this.dashHeight = 2,
    this.padding = 20,
    this.dashColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: List.generate(
        totalWidth ~/ (dashWidth + emptyWidth),
        (_) => Container(
          width: dashWidth,
          height: dashHeight,
          color: dashColor,
          margin: EdgeInsets.only(left: emptyWidth / 2, right: emptyWidth / 2),
        ),
      ),
    );
  }
}

appToast({required var msg}) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColor.black000,
      textColor: AppColor.whiteFFF,
      fontSize: 20.0);
}

Widget appLoader() {
  return Container(
    height: Get.height,
    width: Get.width,
    color: AppColor.transparent,
    child: Center(
      child: CupertinoActivityIndicator(radius: 20),
    ),
  );
}
