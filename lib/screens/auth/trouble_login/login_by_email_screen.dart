import 'package:datingapp/constants/color.dart';
import 'package:datingapp/constants/textstyle.dart';
import 'package:datingapp/screens/auth/trouble_login/check_your_email_screen.dart';
import 'package:datingapp/screens/auth/trouble_login/controller/login_by_email_controller.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginByEmailScreen extends StatelessWidget {
  final LogInByEmailController logInByEmailController =
      Get.put(LogInByEmailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: Column(
        children: [
          AppBarDesign(),
          Text(
            "Login by Email",
            style: TextStyleClass.interBold(
              size: 28.0,
            ),
          ),
          SizedBox(
            height: 33.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: TextFromFieldCommon(hintText: "Your email is"),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            '''We’ll email you a link that will instantly log
you in''',
            textAlign: TextAlign.center,
            style: TextStyleClass.interRegular(
              color: ColorConst.grey69,
              size: 16.0,
            ),
          ),
          Spacer(),
          CommonButton(
            onTap: () {
              Get.to(() => CheckYourEmailScreen());
            },
            title: "Send Email",
          ),
          SizedBox(
            height: 185.0,
          ),
        ],
      ),
    );
  }
}
