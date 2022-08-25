import 'package:datingapp/constants/color.dart';
import 'package:datingapp/constants/image.dart';
import 'package:datingapp/constants/textstyle.dart';
import 'package:datingapp/screens/auth/login_with_phone/controller/i_am_screen_controller.dart';
import 'package:datingapp/screens/auth/login_with_phone/i_am_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PhoneEditScreen extends StatelessWidget {
  const PhoneEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 101,
            width: Get.width,
            padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: ColorConst.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(23),
                bottomRight: Radius.circular(23),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 14,
                  color: ColorConst.black.withOpacity(0.15),
                ),
              ],
            ),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: ColorConst.appColorFF,
                ),
              ),
              centerTitle: true,
              title: Text(
                "Phone Number Settings",
                style: TextStyleClass.interSemiBold(
                  size: 20.0,
                  color: ColorConst.black09,
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  editInfoText(text: "Phone Number"),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: TextFromFieldCommon(
                      hintText: "91 12345 67890",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SvgPicture.asset(
                          ImageConst.checkIcon,
                          color: ColorConst.appColorFF,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, top: 7, bottom: 24),
                    child: Text(
                      "Verified Phone Number",
                      style: TextStyleClass.interRegular(
                        color: ColorConst.grey69,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: Get.width,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        /* color: ColorConst.white,*/
                        borderRadius: BorderRadius.circular(32.0),
                        border: Border.all(color: ColorConst.greyEB),
                        /*   gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            ColorConst.appColor,
                            ColorConst.appColorFD,
                          ],
                        ),*/
                      ),
                      child: Text(
                        "Update My Phone Number",
                        style: TextStyleClass.interSemiBold(
                          size: 16.0,
                          color: ColorConst.appColorFF,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///show me bottom sheet
showMeBottomSheet() {
  final IAmController iAmController = Get.put(IAmController());
  return Get.bottomSheet(
    Padding(
      padding: const EdgeInsets.only(top: 96),
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: ColorConst.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Show Me",
              style: TextStyleClass.interBold(
                size: 28.0,
              ),
            ),
            SizedBox(
              height: 33,
            ),
            options(),
            Spacer(),
            CommonButton(
              onTap: () {
                // Get.to(() => MyOrientationScreen());
              },
              title: "Done",
            ),
            SizedBox(
              height: 44,
            ),
          ],
        ),
      ),
    ),
    isScrollControlled: true,
  );
}
