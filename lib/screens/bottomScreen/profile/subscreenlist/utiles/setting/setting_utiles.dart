import 'package:datingapp/screens/auth/login_with_phone/controller/i_am_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/i_am_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../../../../Constant/app_color.dart';
import '../../../../../../Constant/app_image.dart';
import '../../../../../../Constant/app_textstyle.dart';

class PhoneEditScreen extends StatelessWidget {
  const PhoneEditScreen({Key? key}) : super(key: key);

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
                "Phone Number Settings",
                style: AppTextStyle.interSemiBold(
                  size: 20.0,
                  color: AppColor.black091,
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  editInfoText(text: "Phone Number"),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: TextFromFieldCommon(
                      hintText: "91 12345 67890",
                      isTrue: false,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SvgPicture.asset(
                          AppImage.checkIcon,
                          color: AppColor.appColorFF5,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, top: 7, bottom: 24),
                    child: Text(
                      "Verified Phone Number",
                      style: AppTextStyle.interRegular(
                        color: AppColor.grey697,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => UpdateMobileScreen());
                    },
                    child: Container(
                      height: 50,
                      width: Get.width,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.0),
                        border: Border.all(color: AppColor.greyEBE),
                      ),
                      child: Text(
                        "Update My Phone Number",
                        style: AppTextStyle.interSemiBold(
                          size: 16.0,
                          color: AppColor.appColorFF5,
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
    );
  }
}

///show me bottom sheet
showMeBottomSheet() {
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
              "Show Me",
              style: AppTextStyle.interBold(
                size: 28.0,
              ),
            ),
            SizedBox(
              height: 33,
            ),
            options(),
            Spacer(),
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

///update mobile screen
class UpdateMobileScreen extends StatelessWidget {
  const UpdateMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Column(
        children: [
          AppBarDesign(),
          Text(
            "My Number Is",
            style: AppTextStyle.interBold(
              size: 28.0,
            ),
          ),
          SizedBox(
            height: 33,
          ),
          mobileTextFrom(),
          SizedBox(
            height: 16,
          ),
          Text(
            "When you tap continue, appname will send a text with\nverification code. Message and data rates may apply.\nThe verified phone number can be used to login.",
            textAlign: TextAlign.center,
            style: AppTextStyle.interRegular(
              size: 13.0,
              color: AppColor.grey697,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Learn what happens when your number changes.",
            textAlign: TextAlign.center,
            style: AppTextStyle.interUnderLine(size: 13.0),
          ),
          Spacer(),
          CommonButton(
            onTap: () {
              Get.to(() => UpdateVerifyScreen());
            },
            title: "Continue",
          ),
          SizedBox(
            height: 185.0,
          ),
        ],
      ),
    );
  }

  Widget mobileTextFrom() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            width: 120,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(
                      AppImage.india,
                    ),
                  ),
                  Text(
                    " (+91)",
                    style: AppTextStyle.interRegular(
                      size: 16.0,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColor.greyADA,
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                    child: VerticalDivider(
                      color: AppColor.greyE8E,
                    ),
                  ),
                ],
              ),
            ),
          ),
          contentPadding: EdgeInsets.only(top: 35, left: 20),
          hintText: "12345 67890",
          hintStyle: AppTextStyle.interSemiBold(
            size: 16.0,
            color: AppColor.black030,
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
      ),
    );
  }
}

///update verify otp screen
class UpdateVerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Column(
        children: [
          AppBarDesign(),
          Text(
            "Verify it’s you",
            style: AppTextStyle.interBold(
              size: 28.0,
            ),
          ),
          SizedBox(
            height: 11,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "We send a code to ",
                  style: AppTextStyle.interRegular(
                    size: 18.0,
                  ),
                ),
                TextSpan(
                  text: "(+91 12345 67890).\n",
                  style: AppTextStyle.interRegular(
                    size: 18.0,
                    color: AppColor.appColorFF4,
                  ),
                ),
                TextSpan(
                  text: "Enter it here to verify your identity.",
                  style: AppTextStyle.interRegular(
                    size: 18.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 42,
          ),
          Pinput(
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: focusedPinTheme,
            submittedPinTheme: submittedPinTheme,
            onCompleted: (val) {
              // Get.to(() => WhatsYourEmailScreen());
            },
          ),
          SizedBox(
            height: 42,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Send again",
              style: AppTextStyle.interBold(
                size: 18.0,
                color: AppColor.appColorFF5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  final defaultPinTheme = PinTheme(
    width: 66,
    height: 67,
    textStyle: TextStyle(
      fontSize: 20,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(
        color: AppColor.greyE8E,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
  );
  final focusedPinTheme = PinTheme(
    width: 66,
    height: 67,
    /*textStyle: TextStyle(
      fontSize: 20,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600,
    ),*/
    decoration: BoxDecoration(
      border: Border.all(
        color: AppColor.appColorFF4,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
  );
  final submittedPinTheme = PinTheme(
    width: 66,
    height: 67,
    textStyle: AppTextStyle.interSemiBold(
      size: 34.0,
      color: AppColor.whiteFFF,
    ),
    decoration: BoxDecoration(
      color: AppColor.appColorFF5,
      border: Border.all(
        color: AppColor.appColorFF5,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
  );
}
