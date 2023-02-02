import 'package:datingapp/screens/auth/login_option_screen_controller.dart';
import 'package:datingapp/screens/auth/trouble_login/account_recovery_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constant/app_color.dart';
import '../../Constant/app_image.dart';
import '../../Constant/app_textstyle.dart';
import 'login_with_phone/my_mobile_screen.dart';

class LogInOptionScreen extends StatelessWidget {
  LogInOptionScreen({Key? key}) : super(key: key);
  final LogInOptionScreenController controller =
      Get.put(LogInOptionScreenController());
  @override
  Widget build(BuildContext context) {
    print("${Get.height}");
    print("${Get.width}");
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Let,s you in",
                style: AppTextStyle.interBold(
                  size: 28.0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "By Clicking Log in, you agree with our ",
                      style: AppTextStyle.interRegular(
                        size: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: "Terms",
                      style: AppTextStyle.interUnderLine(),
                    ),
                    TextSpan(
                      text: ".\nLearn how we process your date in our ",
                      style: AppTextStyle.interRegular(
                        size: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: "Privacy\nPolicy",
                      style: AppTextStyle.interUnderLine(),
                    ),
                    TextSpan(
                      text: " and ",
                      style: AppTextStyle.interRegular(
                        size: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: "Cookies Policy",
                      style: AppTextStyle.interUnderLine(),
                    ),
                    TextSpan(
                      text: ".",
                      style: AppTextStyle.interRegular(
                        size: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 52,
              ),
              LoginCommonButtons(
                onTap: () {
                  controller.signInWithGoogle();
                },
                image: AppImage.googleSvg,
                title: "Login With Google",
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: MaterialButton(
                  onPressed: () {
                    controller.googleSignOut();
                    controller.facebookSignIn();
                  },
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
                    padding: EdgeInsets.symmetric(
                        horizontal: Get.width >= 411 ? 80 : 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AppImage.facebookPng, height: 24),
                        /*    SizedBox(
                        width: 15,
                      ),*/
                        Text(
                          "Login With Facebook",
                          style: AppTextStyle.interSemiBold(
                            size: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              LoginCommonButtons(
                onTap: () {
                  Get.to(() => MyMobileScreen());
                },
                image: AppImage.phoneSvg,
                title: "Login With Phone",
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                "Or",
                style: AppTextStyle.interBold(
                  size: 15.0,
                ),
              ),
              SizedBox(
                height: 28,
              ),
              CommonButton(
                onTap: () {
                  Get.to(() => AccountRecoveryScreen());
                },
                title: "Trouble Logging in?",
              ),
            ],
          ),
          Obx(() {
            return controller.isLoading.value == true
                ? appLoader()
                : SizedBox();
          }),
        ],
      ),
    );
  }
}
