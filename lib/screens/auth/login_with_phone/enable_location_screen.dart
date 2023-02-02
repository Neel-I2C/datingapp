import 'package:datingapp/Constant/app_textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/enable_location_screen_controller.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constant/app_color.dart';
import '../../../Constant/app_image.dart';
import '../../bottomScreen/home/bottomNavigation/bottom_navigation_screen.dart';

class EnableLocationScreen extends StatelessWidget {
  EnableLocationScreen({Key? key}) : super(key: key);
  final EnableLocationScreenController controller =
      Get.put(EnableLocationScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFF,
      body: Column(
        children: [
          AppBarDesign(),
          Text(
            "Enable Location",
            style: AppTextStyle.interBold(
              size: 28.0,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            '''You’ll need to enable your
location in order to use
Appname''',
            textAlign: TextAlign.center,
            style: AppTextStyle.interRegular(
              size: 16.0,
              color: AppColor.grey697,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 43),
            child: Image(
              image: AssetImage(AppImage.map),
            ),
          ),
          SizedBox(
            height: 87,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 53),
            child: CommonButton(
              width: Get.width,
              onTap: () {
                Get.to(() => BottomNavigation());
              },
              title: "Allow Location",
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tell Me More",
                textAlign: TextAlign.center,
                style: AppTextStyle.interRegular(
                  size: 20.0,
                  color: AppColor.grey697,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: AppColor.grey697,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
