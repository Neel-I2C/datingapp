import 'package:datingapp/constants/color.dart';
import 'package:datingapp/constants/textstyle.dart';
import 'package:datingapp/screens/bottomScreen/like/controller/like_controller.dart';
import 'package:datingapp/screens/bottomScreen/payment/pay_card_screen.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showAlert(
    {required BuildContext context, LikeController? likeController}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: Get.width,
            child: Column(
              children: [
                SizedBox(
                  height: 21,
                ),
                Text(
                  "Get Tinder Gold",
                  style: TextStyleClass.interBold(
                    size: 22.0,
                    color: ColorConst.appColorFF,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        ColorConst.appColorFE,
                        ColorConst.appColorFF,
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: ColorConst.white,
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  "Unlimited Likes",
                  style: TextStyleClass.interSemiBold(
                    size: 18.0,
                    color: ColorConst.black,
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  "Send as many likes as you want",
                  style: TextStyleClass.interRegular(
                    size: 12.0,
                    color: ColorConst.black,
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    commonContainerDialog(),
                    commonContainerDialog(),
                    commonContainerDialog(),
                    commonContainerDialog(),
                    commonContainerDialog(),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      commonContainerDialog2(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              "12",
                              style: TextStyleClass.interBold(
                                size: 25.0,
                                color: ColorConst.black,
                              ),
                            ),
                            Text(
                              "months",
                              style: TextStyleClass.interBold(
                                size: 15.0,
                                color: ColorConst.black,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "\$7/mo",
                              style: TextStyleClass.interBold(
                                size: 15.0,
                                color: ColorConst.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      commonContainerDialog2(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "6",
                              style: TextStyleClass.interBold(
                                size: 25.0,
                                color: ColorConst.black,
                              ),
                            ),
                            Text(
                              "months",
                              style: TextStyleClass.interBold(
                                size: 15.0,
                                color: ColorConst.black,
                              ),
                            ),
                            Text(
                              "\$10/mo",
                              style: TextStyleClass.interBold(
                                size: 15.0,
                                color: ColorConst.black,
                              ),
                            ),
                            Text(
                              "Save 36%",
                              style: TextStyleClass.interBold(
                                size: 15.0,
                                color: ColorConst.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      commonContainerDialog2(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              "1",
                              style: TextStyleClass.interBold(
                                size: 25.0,
                                color: ColorConst.black,
                              ),
                            ),
                            Text(
                              "months",
                              style: TextStyleClass.interBold(
                                size: 15.0,
                                color: ColorConst.black,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "\$19/mo",
                              style: TextStyleClass.interBold(
                                size: 15.0,
                                color: ColorConst.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      commonContainerDialog2(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              "12",
                              style: TextStyleClass.interBold(
                                size: 25.0,
                                color: ColorConst.black,
                              ),
                            ),
                            Text(
                              "months",
                              style: TextStyleClass.interBold(
                                size: 15.0,
                                color: ColorConst.black,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "\$7/mo",
                              style: TextStyleClass.interBold(
                                size: 15.0,
                                color: ColorConst.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      commonContainerDialog2(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              "1",
                              style: TextStyleClass.interBold(
                                size: 25.0,
                                color: ColorConst.black,
                              ),
                            ),
                            Text(
                              "months",
                              style: TextStyleClass.interBold(
                                size: 15.0,
                                color: ColorConst.black,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "\$19/mo",
                              style: TextStyleClass.interBold(
                                size: 15.0,
                                color: ColorConst.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CommonButton(
                    onTap: () {
                      // Get.back();
                      likeController!.isSelected(true);
                      Get.to(() => PaymentVaiCardScreen());
                    },
                    width: Get.width,
                    title: "CONTINUE",
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
              ],
            ),
          ),
        ],
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 27),
    ),
  );
}

commonContainerDialog() {
  return Container(
    height: 10,
    width: 10,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: ColorConst.greyC0,
        width: 0.7,
      ),
    ),
  );
}

commonContainerDialog2({var child}) {
  return Container(
    height: 145,
    width: 107,
    decoration: BoxDecoration(
      color: ColorConst.greyF7,
      border: Border.all(
        color: ColorConst.greyDE,
      ),
    ),
    child: child,
  );
}
