import 'package:datingapp/screens/auth/trouble_login/controller/login_by_email_controller.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constant/app_color.dart';
import '../../../Constant/app_textstyle.dart';
import '../../../utiles/validation.dart';

class LoginByEmailScreen extends StatelessWidget {
  final LogInByEmailController controller = Get.put(LogInByEmailController());

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
                  "Login by Email",
                  style: AppTextStyle.interBold(
                    size: 28.0,
                  ),
                ),
                SizedBox(
                  height: 33.0,
                ),
                Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          controller: controller.usernameController,
                          validator: (value) => requireValidation(
                            value: value,
                            type: "Username",
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 35, left: 20),
                            // suffixIcon: suffixIcon ?? SizedBox.shrink(),
                            hintText: "Enter Username",
                            hintStyle: AppTextStyle.interRegular(
                              size: 16.0,
                              color: AppColor.greyB5C,
                            ),
                            errorMaxLines: 4,
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
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          controller: controller.emailController,
                          validator: (value) => validateEmail(value),
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.only(top: 35, left: 20),
                            hintText: "Enter Email",
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
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          controller: controller.passwordController,
                          validator: (value) =>
                              passwordValidation(password: value),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 35, left: 20),
                            // suffixIcon: suffixIcon ?? SizedBox.shrink(),
                            hintText: "Enter Password",
                            hintStyle: AppTextStyle.interRegular(
                              size: 16.0,
                              color: AppColor.greyB5C,
                            ),
                            errorMaxLines: 4,
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
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
                //   child: TextFromFieldCommon(
                //     hintText: "Your email is",
                //     controller: controller.email,
                //   ),
                // ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  '''We’ll email you a link that will instantly log
you in''',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.interRegular(
                    color: AppColor.grey697,
                    size: 16.0,
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                // controller.controllerText.isEmpty
                //     ? CommonButton(
                //         onTap: () {},
                //         colors: [
                //           AppColor.appColorFF4.withOpacity(0.6),
                //           AppColor.appColorFD7.withOpacity(0.6),
                //         ],
                //         title: "Send Email",
                //       )
                //     : CommonButton(
                //         onTap: () {
                //           if (controller.formKey.currentState!.validate()) {
                //             controller.emailAuth();
                //           }
                //           // Get.to(() => CheckYourEmailScreen());
                //         },
                //         title: "Send Email",
                //       ),
                CommonButton(
                  onTap: () {
                    if (controller.formKey.currentState!.validate()) {
                      controller.signIn();
                      // controller.emailAuth();
                    }
                  },
                  title: "Send Email",
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
}
