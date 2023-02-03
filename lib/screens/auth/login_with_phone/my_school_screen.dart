import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/my_school_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/your_interests_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constant/app_color.dart';

class MySchoolScreen extends StatelessWidget {
  MySchoolScreen({Key? key}) : super(key: key);
  final MySchoolScreenController controller =
      Get.put(MySchoolScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarDesign(),
            Text(
              "My School Is",
              style: AppTextStyle.interBold(
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
                controller: controller.schoolController,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              '''This is how it will appear in Tinder and
you will not be able to change it''',
              textAlign: TextAlign.center,
              style: AppTextStyle.interRegular(
                size: 16.0,
                color: AppColor.grey697,
              ),
            ),
            SizedBox(
              height: 200,
            ),
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
      ),
    );
  }
}
