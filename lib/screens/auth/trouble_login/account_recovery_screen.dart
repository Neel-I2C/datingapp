import 'package:datingapp/screens/auth/trouble_login/login_by_email_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constant/app_color.dart';
import '../../../Constant/app_textstyle.dart';

class AccountRecoveryScreen extends StatelessWidget {
  const AccountRecoveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Column(
        children: [
          AppBarDesign(),
          Text(
            "Account Recovery",
            style: AppTextStyle.interBold(
              size: 28.0,
            ),
          ),
          SizedBox(
            height: 22.0,
          ),
          Text(
            '''Changed your phone number,
or lost access to your Facebook
Account? We can help you log in
with your email.''',
            textAlign: TextAlign.center,
            style: AppTextStyle.interRegular(
              size: 18.0,
              color: AppColor.grey697,
            ),
          ),
          Spacer(),
          CommonButton(
            onTap: () {
              Get.to(() => LoginByEmailScreen());
            },
            title: "Login With Email",
          ),
          SizedBox(
            height: 185.0,
          ),
        ],
      ),
    );
  }
}
