import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/verify_otp_screen_controller.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../../Constant/app_color.dart';

class VerifyOtpScreen extends StatelessWidget {
  final VerifyOtpScreenController controller =
      Get.put(VerifyOtpScreenController());
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
                  text:
                      "(+91 ${controller.myMobileScreenController.numberController.text}).\n",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Pinput(
              length: 6,
              controller: controller.otpController,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              onCompleted: (val) {
                controller.checkOtp();
              },
            ),
          ),
          SizedBox(
            height: 42,
          ),
          TextButton(
            onPressed: () {
              controller.myMobileScreenController.verifyPhoneNumber();
            },
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
