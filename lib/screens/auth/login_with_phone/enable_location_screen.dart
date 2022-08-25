import 'package:datingapp/constants/color.dart';
import 'package:datingapp/constants/image.dart';
import 'package:datingapp/constants/textstyle.dart';
import 'package:datingapp/screens/bottomScreen/home/bottomNavigation/bottom_navigation_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: Column(
        children: [
          AppBarDesign(),
          Text(
            "Enable Location",
            style: TextStyleClass.interBold(
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
            style: TextStyleClass.interRegular(
              size: 16.0,
              color: ColorConst.grey69,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 43),
            child: Image(
              image: AssetImage(ImageConst.map),
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
                style: TextStyleClass.interRegular(
                  size: 20.0,
                  color: ColorConst.grey69,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: ColorConst.grey69,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
