import 'package:datingapp/constants/color.dart';
import 'package:datingapp/constants/textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/your_interests_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySchoolScreen extends StatelessWidget {
  const MySchoolScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: Column(
        children: [
          AppBarDesign(),
          Text(
            "My School Is",
            style: TextStyleClass.interBold(
              size: 28.0,
            ),
          ),
          SizedBox(
            height: 33,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextFromFieldCommon(
              hintText: "School Name",
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            '''This is how it will appear in Tinder and
you will not be able to change it''',
            textAlign: TextAlign.center,
            style: TextStyleClass.interRegular(
              size: 16.0,
              color: ColorConst.grey69,
            ),
          ),
          Spacer(),
          CommonButton(
            onTap: () {
              Get.to(() => YourInterestScreen());
            },
            title: "Continue",
          ),
          SizedBox(
            height: 184,
          ),
        ],
      ),
    );
  }
}