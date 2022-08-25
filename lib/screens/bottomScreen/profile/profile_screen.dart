import 'package:datingapp/constants/color.dart';
import 'package:datingapp/constants/image.dart';
import 'package:datingapp/constants/textstyle.dart';
import 'package:datingapp/screens/bottomScreen/profile/utiles/profile_utiles.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProfilePart1(),
          Padding(
            padding: const EdgeInsets.only(top: 90, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(ImageConst.boost),
                SizedBox(
                  width: 11,
                ),
                Text(
                  "Boost",
                  style: TextStyleClass.interBold(
                    size: 26.0,
                    color: ColorConst.black09,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '''Be a top profile in your area for
30 minutes to get more matches''',
            textAlign: TextAlign.center,
            style: TextStyleClass.interRegular(
              size: 18.0,
              color: ColorConst.grey69,
            ),
          ),
          SizedBox(
            height: 57,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 53),
            child: CommonButton(
              onTap: () {
                // Get.to(() => AccountRecoveryScreen());
              },
              width: Get.width,
              title: "My Boosts",
            ),
          ),
        ],
      ),
    );
  }
}
