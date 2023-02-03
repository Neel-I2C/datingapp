import 'package:datingapp/screens/auth/login_with_phone/controller/whatsa_your%20email_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/profile_detail_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constant/app_color.dart';
import '../../../Constant/app_image.dart';
import '../../../Constant/app_textstyle.dart';

class WhatsYourEmailScreen extends StatelessWidget {
  WhatsYourEmailScreen({Key? key}) : super(key: key);
  final WhatsYourEmailScreenController controller =
      Get.put(WhatsYourEmailScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBarDesign(),
            Text(
              "What’s your email?",
              style: AppTextStyle.interBold(
                size: 28.0,
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              '''Don’t  lose access to your account,
verify your email.''',
              textAlign: TextAlign.center,
              style: AppTextStyle.interRegular(
                size: 16.0,
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TextFromFieldCommon(
                hintText: "Enter Email",
              ),
            ),
            // Form(
            //   key: controller.formKey,
            //   child: Column(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 24),
            //         child: TextFormField(
            //           controller: controller.emailController,
            //           validator: (value) => validateEmail(value),
            //           decoration: InputDecoration(
            //             isDense: true,
            //             contentPadding: EdgeInsets.only(top: 35, left: 20),
            //             hintText: "Enter Email",
            //             hintStyle: AppTextStyle.interRegular(
            //               size: 16.0,
            //               color: AppColor.greyB5C,
            //             ),
            //             border: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(40),
            //               borderSide: BorderSide(
            //                 color: AppColor.greyEBE,
            //                 width: 1,
            //               ),
            //             ),
            //             enabledBorder: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(40),
            //               borderSide: BorderSide(
            //                 color: AppColor.greyEBE,
            //                 width: 1,
            //               ),
            //             ),
            //             focusedErrorBorder: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(40),
            //               borderSide: BorderSide(
            //                 color: AppColor.appColorFF4,
            //                 width: 1,
            //               ),
            //             ),
            //             focusedBorder: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(40),
            //               borderSide: BorderSide(
            //                 color: AppColor.appColorFF4,
            //                 width: 1,
            //               ),
            //             ),
            //             errorBorder: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(40),
            //               borderSide: BorderSide(
            //                 color: AppColor.appColorFF4,
            //                 width: 1,
            //               ),
            //             ),
            //             disabledBorder: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(40),
            //               borderSide: BorderSide(
            //                 color: AppColor.greyEBE,
            //                 width: 1,
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         height: 11,
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 24),
            //         child: TextFormField(
            //           controller: controller.passwordController,
            //           validator: (value) => passwordValidation(password: value),
            //           decoration: InputDecoration(
            //             contentPadding: EdgeInsets.only(top: 35, left: 20),
            //             // suffixIcon: suffixIcon ?? SizedBox.shrink(),
            //             hintText: "Enter Password",
            //             hintStyle: AppTextStyle.interRegular(
            //               size: 16.0,
            //               color: AppColor.greyB5C,
            //             ),
            //             errorMaxLines: 4,
            //             border: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(40),
            //               borderSide: BorderSide(
            //                 color: AppColor.greyEBE,
            //                 width: 1,
            //               ),
            //             ),
            //             enabledBorder: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(40),
            //               borderSide: BorderSide(
            //                 color: AppColor.greyEBE,
            //                 width: 1,
            //               ),
            //             ),
            //             focusedErrorBorder: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(40),
            //               borderSide: BorderSide(
            //                 color: AppColor.appColorFF4,
            //                 width: 1,
            //               ),
            //             ),
            //             focusedBorder: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(40),
            //               borderSide: BorderSide(
            //                 color: AppColor.appColorFF4,
            //                 width: 1,
            //               ),
            //             ),
            //             errorBorder: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(40),
            //               borderSide: BorderSide(
            //                 color: AppColor.appColorFF4,
            //                 width: 1,
            //               ),
            //             ),
            //             disabledBorder: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(40),
            //               borderSide: BorderSide(
            //                 color: AppColor.greyEBE,
            //                 width: 1,
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 240,
            ),
            CommonButton(
              onTap: () {
                Get.to(() => ProfileDetailScreen());
              },
              title: "Continue",
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
            LoginCommonButtons(
              onTap: () {
                // controller.logInOptionScreenController.signInWithGoogle();
              },
              image: AppImage.googleSvg,
              title: "Login With Google",
            ),
            SizedBox(
              height: 28,
            ),
          ],
        ),
      ),
    );
  }
}
