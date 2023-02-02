import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/my_mobile_screen_controller.dart';
import 'package:datingapp/utiles/validation.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constant/app_color.dart';
import '../../../Constant/app_image.dart';

class MyMobileScreen extends StatelessWidget {
  MyMobileScreen({Key? key}) : super(key: key);
  final MyMobileScreenController controller =
      Get.put(MyMobileScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
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
                Form(
                  key: controller.formKey,
                  child: mobileTextFrom(),
                ),
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
                SizedBox(
                  height: 150,
                ),
                CommonButton(
                  onTap: () {
                    if (controller.formKey.currentState!.validate()) {
                      controller.verifyPhoneNumber();
                    }
                  },
                  title: "Continue",
                ),
                SizedBox(
                  height: 185.0,
                ),
              ],
            ),
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

  Widget mobileTextFrom() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        controller: controller.numberController,
        validator: (value) => validateMobile(value!),
        keyboardType: TextInputType.number,
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
